version 1.0

task TraceDump {
  input {
    File trace_file
  }
  command <<<
    trace_dump \
      ~{trace_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trace_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}