version 1.0

task TestInstallbak {
  command <<<
    test_install_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}