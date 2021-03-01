version 1.0

task Bioconductorscaterscriptspostinstalltestssh {
  input {
    String r_seurat_workflow_post_install_tests_dots_h
    String? action
    String? use_existing_outputs
  }
  command <<<
    bioconductor_scater_scripts_post_install_tests_sh \
      ~{r_seurat_workflow_post_install_tests_dots_h} \
      ~{action} \
      ~{use_existing_outputs}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r_seurat_workflow_post_install_tests_dots_h: ""
    action: ""
    use_existing_outputs: ""
  }
  output {
    File out_stdout = stdout()
  }
}