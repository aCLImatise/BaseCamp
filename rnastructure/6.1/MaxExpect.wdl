version 1.0

task MaxExpect {
  input {
    String input_file
    String ct_file
  }
  command <<<
    MaxExpect \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    input_file: ""
    ct_file: ""
  }
}