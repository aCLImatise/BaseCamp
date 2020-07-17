version 1.0

task HalRandGen {
  input {
    String hal_stats
    File path_of_ouput_hal_alignment_file
  }
  command <<<
    halRandGen \
      ~{hal_stats} \
      ~{path_of_ouput_hal_alignment_file}
  >>>
  parameter_meta {
    hal_stats: ""
    path_of_ouput_hal_alignment_file: ""
  }
}