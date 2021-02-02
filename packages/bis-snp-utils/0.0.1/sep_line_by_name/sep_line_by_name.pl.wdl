version 1.0

task SepLineByNamepl {
  command <<<
    sep_line_by_name_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}