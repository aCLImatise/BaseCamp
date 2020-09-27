version 1.0

task Clustalw2fasta {
  input {
    Boolean? no_gap
    File alignment_file
  }
  command <<<
    clustalw2fasta \
      ~{alignment_file} \
      ~{if (no_gap) then "-nogap" else ""}
  >>>
  parameter_meta {
    no_gap: "-consensus <threshold>\\n-seqorder <seqorder filename>\\n"
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}