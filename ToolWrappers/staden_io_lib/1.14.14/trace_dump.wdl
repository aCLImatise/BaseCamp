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
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    trace_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}