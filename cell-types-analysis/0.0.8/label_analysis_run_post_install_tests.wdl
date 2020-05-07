version 1.0

task LabelAnalysisRunPostInstallTests.sh {
  input {
    Boolean actionAction
    Boolean useUseExistingOutputs
  }
  command <<<
    label_analysis_run_post_install_tests.sh \
      ~{true="- action" false="" actionAction} \
      ~{true="- use_existing_outputs" false="" useUseExistingOutputs}
  >>>
}