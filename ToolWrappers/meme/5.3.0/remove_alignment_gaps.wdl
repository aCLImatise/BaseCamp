version 1.0

task Removealignmentgaps {
  input {
    String species
    String alignment
  }
  command <<<
    remove_alignment_gaps \
      ~{species} \
      ~{alignment}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    species: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}