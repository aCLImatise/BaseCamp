version 1.0

task ScfDump {
  input {
    String scf_filename
  }
  command <<<
    scf_dump \
      ~{scf_filename}
  >>>
  parameter_meta {
    scf_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}