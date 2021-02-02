version 1.0

task Filterpl {
  command <<<
    filter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}