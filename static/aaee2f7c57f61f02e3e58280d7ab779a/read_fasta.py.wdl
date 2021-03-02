version 1.0

task ReadFastapy {
  command <<<
    read_fasta_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/tigmint:1.2.2--py_1"
  }
  output {
    File out_stdout = stdout()
  }
}