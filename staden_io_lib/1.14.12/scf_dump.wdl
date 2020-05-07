version 1.0

task ScfDump {
  input {
    String? scfScfFilename
  }
  command <<<
    scf_dump \
      ~{scfScfFilename}
  >>>
}