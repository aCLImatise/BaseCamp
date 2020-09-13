version 1.0

task Coloralnpl {
  command <<<
    coloraln_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}