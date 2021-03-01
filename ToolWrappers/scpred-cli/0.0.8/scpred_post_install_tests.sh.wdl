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
    docker: "None"
  }
  parameter_meta {
    action: ""
    use_existing_outputs: ""
  }
  output {
    File out_stdout = stdout()
  }
}