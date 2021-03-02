version 1.0

task TabutilsLess {
  input {
    Boolean? quit_once_end
    Boolean? display_status_line
    Boolean? prefix_line_number
    Boolean? ignore_case_searches
    String less
  }
  command <<<
    tabutils less \
      ~{less} \
      ~{if (quit_once_end) then "-E" else ""} \
      ~{if (display_status_line) then "-M" else ""} \
      ~{if (prefix_line_number) then "-N" else ""} \
      ~{if (ignore_case_searches) then "-I" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quit_once_end: "Quit once the end of a file is reached"
    display_status_line: "Display status line with line numbers\\nand percentage through the file"
    prefix_line_number: "Prefix line number to each line"
    ignore_case_searches: "Ignore case in all searches"
    less: ""
  }
  output {
    File out_stdout = stdout()
  }
}