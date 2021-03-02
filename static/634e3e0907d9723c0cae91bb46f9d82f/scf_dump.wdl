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
    docker: "None"
  }
  parameter_meta {
    scf_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}