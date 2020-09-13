version 1.0

task Readshifterpl {
  command <<<
    readshifter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}