version 1.0

task ScpredPostInstallTestsbats {
  command <<<
    scpred_post_install_tests_bats
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  output {
    File out_stdout = stdout()
  }
}