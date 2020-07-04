version 1.0

task Ct2dot {
  input {
    String ct_file
    String structure_number
    String bracket_file
  }
  command <<<
    ct2dot \
      ~{ct_file} \
      ~{structure_number} \
      ~{bracket_file}
  >>>
  parameter_meta {
    ct_file: ""
    structure_number: ""
    bracket_file: ""
  }
}