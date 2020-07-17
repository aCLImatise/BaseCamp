version 1.0

task LabelAnalysisRunPostInstallTests.sh {
  input {
    String run_post_install_tests_dots_h
    String? action
    String? use_existing_outputs
  }
  command <<<
    label_analysis_run_post_install_tests.sh \
      ~{run_post_install_tests_dots_h} \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  parameter_meta {
    run_post_install_tests_dots_h: ""
    action: ""
    use_existing_outputs: ""
  }
}