version 1.0

task MaxExpectSmp {
  input {
    Int max_expect
    String input_file
    String ct_file
  }
  command <<<
    MaxExpect-smp \
      ~{max_expect} \
      ~{input_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    max_expect: ""
    input_file: ""
    ct_file: ""
  }
}