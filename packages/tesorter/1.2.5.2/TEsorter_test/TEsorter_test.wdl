version 1.0

task TEsortertest {
  command <<<
    TEsorter_test
  >>>
  output {
    File out_stdout = stdout()
  }
}