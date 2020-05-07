version 1.0

task QuasitoolsConsensusOPTIONSBAM {
  input {
    String? referenceReference
  }
  command <<<
    quasitools consensus OPTIONS BAM \
      ~{referenceReference}
  >>>
}