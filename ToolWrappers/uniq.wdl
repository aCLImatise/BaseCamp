version 1.0

task Uniq {
  input {
    Boolean? count
    Boolean? repeated
    Boolean? print_duplicate_lines
    Boolean? all_repeated
    String? skip_fields
    Boolean? group
    Boolean? ignore_case
    String? skip_chars
    Boolean? unique
    Boolean? zero_terminated
    String? check_chars
  }
  command <<<
    uniq \
      ~{if (count) then "--count" else ""} \
      ~{if (repeated) then "--repeated" else ""} \
      ~{if (print_duplicate_lines) then "-D" else ""} \
      ~{if (all_repeated) then "--all-repeated" else ""} \
      ~{if defined(skip_fields) then ("--skip-fields " +  '"' + skip_fields + '"') else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if defined(skip_chars) then ("--skip-chars " +  '"' + skip_chars + '"') else ""} \
      ~{if (unique) then "--unique" else ""} \
      ~{if (zero_terminated) then "--zero-terminated" else ""} \
      ~{if defined(check_chars) then ("--check-chars " +  '"' + check_chars + '"') else ""}
  >>>
  parameter_meta {
    count: "prefix lines by the number of occurrences"
    repeated: "only print duplicate lines, one for each group"
    print_duplicate_lines: "print all duplicate lines"
    all_repeated: "[=METHOD]  like -D, but allow separating groups\\nwith an empty line;\\nMETHOD={none(default),prepend,separate}"
    skip_fields: "avoid comparing the first N fields"
    group: "[=METHOD]  show all items, separating groups with an empty line;\\nMETHOD={separate(default),prepend,append,both}"
    ignore_case: "ignore differences in case when comparing"
    skip_chars: "avoid comparing the first N characters"
    unique: "only print unique lines"
    zero_terminated: "line delimiter is NUL, not newline"
    check_chars: "compare no more than N characters in lines"
  }
  output {
    File out_stdout = stdout()
  }
}