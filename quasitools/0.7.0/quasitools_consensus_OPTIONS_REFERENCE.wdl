version 1.0

task QuasitoolsConsensusOPTIONSREFERENCE {
  input {
    String? bamBam
    String? referenceReference
  }
  command <<<
    quasitools consensus OPTIONS REFERENCE \
      ~{bamBam} \
      ~{referenceReference}
  >>>
}