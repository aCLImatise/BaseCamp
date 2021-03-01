version 1.0

task SmofSniff {
  input {
    String input_fasta_sequence
  }
  command <<<
    smof sniff \
      ~{input_fasta_sequence}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}