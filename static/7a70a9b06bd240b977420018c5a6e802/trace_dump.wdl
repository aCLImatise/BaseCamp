version 1.0

task TraceDump {
  input {
    String trace_file
  }
  command <<<
    trace_dump \
      ~{trace_file}
  >>>
  parameter_meta {
    trace_file: ""
  }
}