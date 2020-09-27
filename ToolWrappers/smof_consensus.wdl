version 1.0

task SmofConsensus {
  input {
    Boolean? table
    String input_fasta_default
  }
  command <<<
    smof consensus \
      ~{input_fasta_default} \
      ~{if (table) then "--table" else ""}
  >>>
  parameter_meta {
    table: "Print count table instead of consensus"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}