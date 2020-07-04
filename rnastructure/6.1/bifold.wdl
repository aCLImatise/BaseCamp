version 1.0

task Bifold {
  input {
    String seq_file_one
    String seq_file_two
    String ct_file
  }
  command <<<
    bifold \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{ct_file}
  >>>
  parameter_meta {
    seq_file_one: ""
    seq_file_two: ""
    ct_file: ""
  }
}