version 1.0

task Clustalw2fasta {
  input {
    Boolean? no_gap
    String? consensus
    File? seq_order
    File alignment_file
  }
  command <<<
    clustalw2fasta \
      ~{alignment_file} \
      ~{if (no_gap) then "-nogap" else ""} \
      ~{if defined(consensus) then ("-consensus " +  '"' + consensus + '"') else ""} \
      ~{if defined(seq_order) then ("-seqorder " +  '"' + seq_order + '"') else ""}
  >>>
  parameter_meta {
    no_gap: ""
    consensus: ""
    seq_order: ""
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}