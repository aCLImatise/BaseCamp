version 1.0

task SmartCount {
  command <<<
    smartCount
  >>>
  output {
    File out_stdout = stdout()
  }
}