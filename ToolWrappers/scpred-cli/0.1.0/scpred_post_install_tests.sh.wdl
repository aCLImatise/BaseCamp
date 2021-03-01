version 1.0

task ScpredPostInstallTestssh {
  input {
    String? action
    String? use_existing_outputs
  }
  command <<<
    scpred_post_install_tests_sh \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scpred-cli:0.1.0--1"
  }
  parameter_meta {
    action: ""
    use_existing_outputs: ""
  }
  output {
    File out_stdout = stdout()
  }
}