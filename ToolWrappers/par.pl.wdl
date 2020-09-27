version 1.0

task Parpl {
  command <<<
    par_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}