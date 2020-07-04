version 1.0

task OrthomclReduceFasta {
  input {
    String fast_a_file
    String tax_a
  }
  command <<<
    orthomclReduceFasta \
      ~{fast_a_file} \
      ~{tax_a}
  >>>
  parameter_meta {
    fast_a_file: ""
    tax_a: ""
  }
}