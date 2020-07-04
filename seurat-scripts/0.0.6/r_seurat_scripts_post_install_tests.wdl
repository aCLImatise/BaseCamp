version 1.0

task RSeuratScriptsPostInstallTests.sh {
  input {
    String r_seurat_workflow_post_install_tests_dots_h
    String? action
    String? use_existing_outputs
  }
  command <<<
    r-seurat-scripts-post-install-tests.sh \
      ~{r_seurat_workflow_post_install_tests_dots_h} \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  parameter_meta {
    r_seurat_workflow_post_install_tests_dots_h: ""
    action: ""
    use_existing_outputs: ""
  }
}