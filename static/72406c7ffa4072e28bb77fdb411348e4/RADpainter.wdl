version 1.0

task RADpainter {
  command <<<
    RADpainter
  >>>
  output {
    File out_stdout = stdout()
  }
}