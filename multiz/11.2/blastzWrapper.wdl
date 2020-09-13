version 1.0

task BlastzWrapper {
  command <<<
    blastzWrapper
  >>>
  output {
    File out_stdout = stdout()
  }
}