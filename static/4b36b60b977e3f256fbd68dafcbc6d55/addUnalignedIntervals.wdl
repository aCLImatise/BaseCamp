version 1.0

task AddUnalignedIntervals {
  input {
    String input_interval_file
    String output_interval_file
  }
  command <<<
    addUnalignedIntervals \
      ~{input_interval_file} \
      ~{output_interval_file}
  >>>
  parameter_meta {
    input_interval_file: ""
    output_interval_file: ""
  }
}