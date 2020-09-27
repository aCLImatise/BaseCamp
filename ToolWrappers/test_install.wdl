version 1.0

task TestInstall {
  command <<<
    test_install
  >>>
  output {
    File out_stdout = stdout()
  }
}