version 1.0

task RSeuratScriptsPostInstallTests.sh {
  input {
    Boolean actionAction
    Boolean useUseExistingOutputs
  }
  command <<<
    r-seurat-scripts-post-install-tests.sh \
      ~{true="- action" false="" actionAction} \
      ~{true="- use_existing_outputs" false="" useUseExistingOutputs}
  >>>
}