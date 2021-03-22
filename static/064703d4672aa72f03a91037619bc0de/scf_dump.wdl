version 1.0

task ScfDump {
  input {
    String scf_filename
  }
  command <<<
    scf_dump \
      ~{scf_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    scf_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}