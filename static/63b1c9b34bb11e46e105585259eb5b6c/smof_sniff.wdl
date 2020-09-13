version 1.0

task SmofSniff {
  input {
    String input_fasta_default
  }
  command <<<
    smof sniff \
      ~{input_fasta_default}
  >>>
  parameter_meta {
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}