version 1.0

task SeuratgetrandomgenesR {
  command <<<
    seurat_get_random_genes_R
  >>>
  output {
    File out_stdout = stdout()
  }
}