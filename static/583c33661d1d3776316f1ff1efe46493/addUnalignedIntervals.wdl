version 1.0

task AddUnalignedIntervals {
  input {
    File input_interval_file
    File output_interval_file
  }
  command <<<
    addUnalignedIntervals \
      ~{input_interval_file} \
      ~{output_interval_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_interval_file: ""
    output_interval_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_interval_file = "${in_output_interval_file}"
  }
}