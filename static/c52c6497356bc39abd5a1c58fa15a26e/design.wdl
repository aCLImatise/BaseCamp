version 1.0

task Design {
  input {
    String ct_structure_file
  }
  command <<<
    design \
      ~{ct_structure_file}
  >>>
  parameter_meta {
    ct_structure_file: ""
  }
}