version 1.0

task Tandem2XML {
  input {
    String input_file
    String? output_file
  }
  command <<<
    Tandem2XML \
      ~{input_file} \
      ~{output_file}
  >>>
  parameter_meta {
    input_file: ""
    output_file: ""
  }
}