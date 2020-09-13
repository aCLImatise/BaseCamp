version 1.0

task Test {
  command <<<
    test
  >>>
  output {
    File out_stdout = stdout()
  }
}