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
    String? option
  }
  command <<<
    uniq \
      ~{option} \
      ~{true="--count" false="" count} \
      ~{true="--repeated" false="" repeated} \
      ~{true="-D" false="" print_duplicate_lines} \
      ~{true="--all-repeated" false="" all_repeated} \
      ~{if defined(skip_fields) then ("--skip-fields " +  '"' + skip_fields + '"') else ""} \
      ~{true="--group" false="" group} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{if defined(skip_chars) then ("--skip-chars " +  '"' + skip_chars + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{true="--zero-terminated" false="" zero_terminated} \
      ~{if defined(check_chars) then ("--check-chars " +  '"' + check_chars + '"') else ""}
  >>>
  parameter_meta {
    count: "prefix lines by the number of occurrences"
    repeated: "only print duplicate lines, one for each group"
    print_duplicate_lines: "print all duplicate lines"
    all_repeated: "[=METHOD]  like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate}"
    skip_fields: "avoid comparing the first N fields"
    group: "[=METHOD]  show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both}"
    ignore_case: "ignore differences in case when comparing"
    skip_chars: "avoid comparing the first N characters"
    unique: "only print unique lines"
    zero_terminated: "line delimiter is NUL, not newline"
    check_chars: "compare no more than N characters in lines"
    option: ""
  }
}