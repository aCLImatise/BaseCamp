version 1.0

task Filterpl {
  command <<<
    Filter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}