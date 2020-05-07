version 1.0

task ScfInfo {
  input {
    String? scfScfFilename
  }
  command <<<
    scf_info \
      ~{scfScfFilename}
  >>>
}