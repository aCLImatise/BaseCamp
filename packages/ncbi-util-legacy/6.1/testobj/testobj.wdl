version 1.0

task Testobj {
  command <<<
    testobj
  >>>
  output {
    File out_stdout = stdout()
  }
}