version 1.0

task ScpredPostInstallTestsbats {
  command <<<
    scpred_post_install_tests_bats
  >>>
  output {
    File out_stdout = stdout()
  }
}