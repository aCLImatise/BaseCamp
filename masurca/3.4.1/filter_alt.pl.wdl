version 1.0

task FilterAltpl {
  command <<<
    filter_alt_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}