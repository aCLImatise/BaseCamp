version 1.0

task Testeutils {
  command <<<
    test_eutils
  >>>
  output {
    File out_stdout = stdout()
  }
}