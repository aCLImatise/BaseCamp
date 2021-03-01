version 1.0

task Consensuspy {
  input {
    String alignment
  }
  command <<<
    consensus_py \
      ~{alignment}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment: "The aligned sequences, in FASTA format (but no multi-line\\nsequences)."
  }
  output {
    File out_stdout = stdout()
  }
}