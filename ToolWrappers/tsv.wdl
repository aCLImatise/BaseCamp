version 1.0

task Tsv {
  input {
    Boolean? quit_end_reached
    Boolean? display_status_line
    Boolean? prefix_line_number
    Boolean? ignore_case_searches
    String less
  }
  command <<<
    tsv \
      ~{less} \
      ~{if (quit_end_reached) then "-E" else ""} \
      ~{if (display_status_line) then "-M" else ""} \
      ~{if (prefix_line_number) then "-N" else ""} \
      ~{if (ignore_case_searches) then "-I" else ""}
  >>>
  parameter_meta {
    quit_end_reached: "Quit once the end of a file is reached"
    display_status_line: "Display status line with line numbers\\nand percentage through the file"
    prefix_line_number: "Prefix line number to each line"
    ignore_case_searches: "Ignore case in all searches"
    less: ""
  }
  output {
    File out_stdout = stdout()
  }
}