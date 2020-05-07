version 1.0

task ScmapCliPostInstallTests.sh {
  input {
    Boolean actionAction
    Boolean useUseExistingOutputs
  }
  command <<<
    scmap-cli-post-install-tests.sh \
      ~{true="- action" false="" actionAction} \
      ~{true="- use_existing_outputs" false="" useUseExistingOutputs}
  >>>
}