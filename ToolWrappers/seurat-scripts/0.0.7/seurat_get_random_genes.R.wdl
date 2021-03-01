version 1.0

task SeuratgetrandomgenesR {
  command <<<
    seurat_get_random_genes_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}