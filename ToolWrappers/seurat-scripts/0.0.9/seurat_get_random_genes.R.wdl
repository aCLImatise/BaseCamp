version 1.0

task SeuratgetrandomgenesR {
  command <<<
    seurat_get_random_genes_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/seurat-scripts:0.0.9--0"
  }
  output {
    File out_stdout = stdout()
  }
}