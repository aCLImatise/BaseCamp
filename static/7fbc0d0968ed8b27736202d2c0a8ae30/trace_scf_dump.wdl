version 1.0

task TraceScfDump {
  input {
    String? scfScfDump
    String? scfScfFilename
  }
  command <<<
    trace_scf_dump \
      ~{scfScfDump} \
      ~{scfScfFilename}
  >>>
}