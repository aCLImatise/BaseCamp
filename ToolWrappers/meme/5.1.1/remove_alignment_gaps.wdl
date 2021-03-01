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
    docker: "None"
  }
  parameter_meta {
    species: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}