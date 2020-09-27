version 1.0

task Testo {
  command <<<
    test_o
  >>>
  output {
    File out_stdout = stdout()
  }
}