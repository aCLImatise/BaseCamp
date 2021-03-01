version 1.0

task LabelAnalysisRunPostInstallTestssh {
  input {
    String run_post_install_tests_dots_h
    String? action
    String? use_existing_outputs
  }
  command <<<
    label_analysis_run_post_install_tests_sh \
      ~{run_post_install_tests_dots_h} \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    run_post_install_tests_dots_h: ""
    action: ""
    use_existing_outputs: ""
  }
  output {
    File out_stdout = stdout()
  }
}