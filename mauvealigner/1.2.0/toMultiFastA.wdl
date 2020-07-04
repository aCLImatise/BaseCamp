version 1.0

task ToMultiFastA {
  input {
    String input_interval_file
    String output_base_name
  }
  command <<<
    toMultiFastA \
      ~{input_interval_file} \
      ~{output_base_name}
  >>>
  parameter_meta {
    input_interval_file: ""
    output_base_name: ""
  }
}