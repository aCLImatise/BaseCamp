version 1.0

task TestTrtoolssh {
  command <<<
    test_trtools_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}