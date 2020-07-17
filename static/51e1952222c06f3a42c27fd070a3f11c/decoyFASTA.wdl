version 1.0

task DecoyFASTA {
  input {
    String input_file
    String output_file
    String? filter_file
  }
  command <<<
    decoyFASTA \
      ~{input_file} \
      ~{output_file} \
      ~{filter_file}
  >>>
  parameter_meta {
    input_file: ""
    output_file: ""
    filter_file: ""
  }
}