version 1.0

task SmofSplit {
  input {
    String? number
    Boolean? seqs
    String? prefix
    String input_fasta_sequence
  }
  command <<<
    smof split \
      ~{input_fasta_sequence} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{true="--seqs" false="" seqs} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    number: "Number of output files or sequences per file"
    seqs: "split by maximum sequences per file"
    prefix: "prefix for output files (default=\"xxx\")"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}