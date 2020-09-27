version 1.0

task Panoctpl {
  command <<<
    panoct_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}