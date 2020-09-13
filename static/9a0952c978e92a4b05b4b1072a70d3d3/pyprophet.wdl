version 1.0

task Pyprophet {
  command <<<
    pyprophet
  >>>
  output {
    File out_stdout = stdout()
  }
}