version 1.0

task FETpl {
  command <<<
    FET_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}