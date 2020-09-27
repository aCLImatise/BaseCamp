version 1.0

task ScranPostInstallTestsbats {
  command <<<
    scran_post_install_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}