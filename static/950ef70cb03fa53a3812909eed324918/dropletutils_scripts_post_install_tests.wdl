version 1.0

task DropletutilsScriptsPostInstallTests.sh {
  input {
    Boolean actionAction
    Boolean useUseExistingOutputs
  }
  command <<<
    dropletutils-scripts-post-install-tests.sh \
      ~{true="- action" false="" actionAction} \
      ~{true="- use_existing_outputs" false="" useUseExistingOutputs}
  >>>
}