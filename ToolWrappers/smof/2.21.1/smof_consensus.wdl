version 1.0

task SmofConsensus {
  input {
    Boolean? table
    String input_fasta_sequence
  }
  command <<<
    smof consensus \
      ~{input_fasta_sequence} \
      ~{if (table) then "--table" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smof:2.21.1--py_0"
  }
  parameter_meta {
    table: "Print count table instead of consensus"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}