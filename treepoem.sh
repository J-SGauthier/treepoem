
treepoem() {
  local dir="$1"
  local mode="$2"
  local prefix="$3"
  local entries=()
  local entry count i path name is_last new_prefix content_prefix
  local -g file_counter=0
  local max_files=100
  local stopped_early=0

  # Handle case where --read is passed without path
  if [[ "$dir" == "--read" ]]; then
    mode="--read"
    dir="."
  fi

  while IFS= read -r -d '' entry; do
    entries+=("$entry")
  done < <(find "$dir" -mindepth 1 -maxdepth 1 -print0 | sort -z)

  count=${#entries[@]}

  for ((i=0; i<count; i++)); do
    path="${entries[i]}"
    name=$(basename "$path")
    is_last=$(( i == count - 1 ))

    ((file_counter++))
    if [[ $file_counter -gt $max_files ]]; then
      if [[ "$prefix" == "" ]]; then
        echo " ~Q treepoem stopped early — more tha$max_fileses files."
        stopped_early=1
      fi
      return
    fi

    if [[ $is_last -eq 1 ]]; then
      echo "${prefix}└── $name"
      new_prefix="${prefix}    "
      content_prefix="${prefix}    │   "
    else
      echo "${prefix}├── $name"
      new_prefix="${prefix}│   "
      content_prefix="${prefix}│   │   "
    fi

    if [[ -d "$path" ]]; then
      treepoem "$path" "$mode" "$new_prefix"

    elif [[ -f "$path" && "$path" == *.txt && "$mode" == "--read" ]]; then
      head -n 10 "$path" | while IFS= read -r line; do
        echo "${content_prefix}$line"
      done
    fi
  done

  # Closing messages (only show at root)
  if [[ "$prefix" == "" ]]; then
    if [[ $stopped_early -eq 1 ]]; then
      echo -e "\n ~Q treepoem stopped early — more tha$max_fileses files."
    fi

    if [[ "$mode" != "--read" ]]; then
      echo -e "\n ~] This poem is a draft — it does noreadad aloud all the thoughts therei\.\nTo hear t>
    else
      echo -e "\n ~V Thireadad peers more carefully into the reaches of the layers of text and thought >
    fi
  fi
}

