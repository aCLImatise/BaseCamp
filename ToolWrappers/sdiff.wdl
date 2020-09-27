version 1.0

task Sdiff {
  input {
    File? operate_interactively_sending
    Boolean? ignore_case
    Boolean? ignore_tab_expansion
    Boolean? ignore_trailing_space
    Boolean? ignore_space_change
    Boolean? ignore_all_space
    Boolean? ignore_blank_lines
    String? ignore_matching_lines
    Boolean? strip_trailing_cr
    Boolean? text
    Int? width
    Boolean? left_column
    Boolean? suppress_common_lines
    Boolean? expand_tabs
    Int? tab_size
    Boolean? minimal
    Boolean? speed_large_files
    String? diff_program
  }
  command <<<
    sdiff \
      ~{if defined(operate_interactively_sending) then ("--output " +  '"' + operate_interactively_sending + '"') else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (ignore_tab_expansion) then "--ignore-tab-expansion" else ""} \
      ~{if (ignore_trailing_space) then "--ignore-trailing-space" else ""} \
      ~{if (ignore_space_change) then "--ignore-space-change" else ""} \
      ~{if (ignore_all_space) then "--ignore-all-space" else ""} \
      ~{if (ignore_blank_lines) then "--ignore-blank-lines" else ""} \
      ~{if defined(ignore_matching_lines) then ("--ignore-matching-lines " +  '"' + ignore_matching_lines + '"') else ""} \
      ~{if (strip_trailing_cr) then "--strip-trailing-cr" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (left_column) then "--left-column" else ""} \
      ~{if (suppress_common_lines) then "--suppress-common-lines" else ""} \
      ~{if (expand_tabs) then "--expand-tabs" else ""} \
      ~{if defined(tab_size) then ("--tabsize " +  '"' + tab_size + '"') else ""} \
      ~{if (minimal) then "--minimal" else ""} \
      ~{if (speed_large_files) then "--speed-large-files" else ""} \
      ~{if defined(diff_program) then ("--diff-program " +  '"' + diff_program + '"') else ""}
  >>>
  parameter_meta {
    operate_interactively_sending: "operate interactively, sending output to FILE"
    ignore_case: "consider upper- and lower-case to be the same"
    ignore_tab_expansion: "ignore changes due to tab expansion"
    ignore_trailing_space: "ignore white space at line end"
    ignore_space_change: "ignore changes in the amount of white space"
    ignore_all_space: "ignore all white space"
    ignore_blank_lines: "ignore changes whose lines are all blank"
    ignore_matching_lines: "ignore changes all whose lines match RE"
    strip_trailing_cr: "strip trailing carriage return on input"
    text: "treat all files as text"
    width: "output at most NUM (default 130) print columns"
    left_column: "output only the left column of common lines"
    suppress_common_lines: "do not output common lines"
    expand_tabs: "expand tabs to spaces in output"
    tab_size: "tab stops at every NUM (default 8) print columns"
    minimal: "try hard to find a smaller set of changes"
    speed_large_files: "assume large files, many scattered small changes"
    diff_program: "use PROGRAM to compare files"
  }
  output {
    File out_stdout = stdout()
    File out_operate_interactively_sending = "${in_operate_interactively_sending}"
  }
}