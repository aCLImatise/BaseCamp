version 1.0

task HeadPolishes {
  command <<<
    headPolishes
  >>>
  output {
    File out_stdout = stdout()
  }
}