version 1.0

task Scandepspl {
  command <<<
    scandeps_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}