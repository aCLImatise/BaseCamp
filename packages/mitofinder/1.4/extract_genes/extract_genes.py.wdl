version 1.0

task ExtractGenespy {
  command <<<
    extract_genes_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitofinder:1.4--py27h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}