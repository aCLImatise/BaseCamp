version 1.0

task PybelCompile {
  input {
    Boolean? allow_naked_names
    File path
  }
  command <<<
    pybel compile \
      ~{path} \
      ~{if (allow_naked_names) then "--allow-naked-names" else ""}
  >>>
  parameter_meta {
    allow_naked_names: "Enable lenient parsing for naked names\\n--allow-nested                  Enable lenient parsing for nested statements\\n--disallow-unqualified-translocations\\nDisallow unqualified translocations\\n--no-identifier-validation      Turn off identifier validation\\n--no-citation-clearing          Turn off citation clearing\\n-r, --required-annotations TEXT\\nSpecify multiple required annotations\\n--skip-tqdm\\n-v, --verbose\\n--help                          Show this message and exit.\\n"
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}