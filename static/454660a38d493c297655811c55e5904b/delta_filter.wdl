version 1.0

task DeltaFilter {
  input {
    String delta_file
  }
  command <<<
    delta-filter \
      ~{delta_file}
  >>>
  parameter_meta {
    delta_file: ""
  }
}