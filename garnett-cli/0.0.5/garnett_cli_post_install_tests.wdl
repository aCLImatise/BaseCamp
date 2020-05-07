version 1.0

task GarnettCliPostInstallTests.sh {
  input {
    Boolean actionAction
    Boolean useUseExistingOutputs
  }
  command <<<
    garnett_cli_post_install_tests.sh \
      ~{true="- action" false="" actionAction} \
      ~{true="- use_existing_outputs" false="" useUseExistingOutputs}
  >>>
}