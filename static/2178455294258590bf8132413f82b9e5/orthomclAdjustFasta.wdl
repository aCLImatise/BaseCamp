version 1.0

task OrthomclAdjustFasta {
  input {
    String tax_on_code
    String fast_a_file
    String id_field
  }
  command <<<
    orthomclAdjustFasta \
      ~{tax_on_code} \
      ~{fast_a_file} \
      ~{id_field}
  >>>
  parameter_meta {
    tax_on_code: ""
    fast_a_file: ""
    id_field: ""
  }
}