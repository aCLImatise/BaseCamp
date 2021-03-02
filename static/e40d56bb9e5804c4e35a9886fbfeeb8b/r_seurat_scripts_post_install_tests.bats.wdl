version 1.0

task Rseuratscriptspostinstalltestsbats {
  command <<<
    r_seurat_scripts_post_install_tests_bats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}