version 1.0

task SepLineByNamepl {
  command <<<
    sep_line_by_name_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}