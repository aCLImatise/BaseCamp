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
    docker: "None"
  }
  parameter_meta {
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}