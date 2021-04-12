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
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  parameter_meta {
    alignment: "The aligned sequences, in FASTA format (but no multi-line\\nsequences)."
  }
  output {
    File out_stdout = stdout()
  }
}