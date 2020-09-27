version 1.0

task TraceScfDump {
  input {
    String scf_dump
    String scf_filename
  }
  command <<<
    trace_scf_dump \
      ~{scf_dump} \
      ~{scf_filename}
  >>>
  parameter_meta {
    scf_dump: ""
    scf_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}