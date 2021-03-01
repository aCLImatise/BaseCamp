version 1.0

task Fastamakeindex {
  command <<<
    fasta_make_index
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  output {
    File out_stdout = stdout()
  }
}