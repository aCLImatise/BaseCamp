version 1.0

task FEWpl {
  command <<<
    FEW_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}