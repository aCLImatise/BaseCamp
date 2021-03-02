version 1.0

task Rseuratscriptspostinstalltestsbats {
  command <<<
    r_seurat_scripts_post_install_tests_bats
  >>>
  runtime {
    docker: "quay.io/biocontainers/seurat-scripts:0.0.9--0"
  }
  output {
    File out_stdout = stdout()
  }
}