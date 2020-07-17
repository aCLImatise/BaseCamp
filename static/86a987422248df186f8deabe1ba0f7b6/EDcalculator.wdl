version 1.0

task EDcalculator {
  input {
    String ct_structure_file
  }
  command <<<
    EDcalculator \
      ~{ct_structure_file}
  >>>
  parameter_meta {
    ct_structure_file: ""
  }
}