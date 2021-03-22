version 1.0

task SeqSplitterpy {
  command <<<
    SeqSplitter_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0"
  }
  output {
    File out_stdout = stdout()
  }
}