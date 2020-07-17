version 1.0

task Fold {
  input {
    String sequence_file
    String ct_file
  }
  command <<<
    Fold \
      ~{sequence_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    sequence_file: ""
    ct_file: ""
  }
}