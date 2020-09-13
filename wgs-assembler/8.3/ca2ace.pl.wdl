version 1.0

task Ca2acepl {
  command <<<
    ca2ace_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}