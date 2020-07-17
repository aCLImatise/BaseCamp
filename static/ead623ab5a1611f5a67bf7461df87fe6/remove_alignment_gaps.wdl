version 1.0

task RemoveAlignmentGaps {
  input {
    String species
    String alignment
  }
  command <<<
    remove-alignment-gaps \
      ~{species} \
      ~{alignment}
  >>>
  parameter_meta {
    species: ""
    alignment: ""
  }
}