version 1.0

task Gfa2ToFastapy {
  command <<<
    gfa2_to_fasta_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}