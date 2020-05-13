version 1.0

task QuasitoolsConsensusREFERENCE {
  input {
    String? optionsOptions
    String? bamBam
    String? referenceReference
  }
  command <<<
    quasitools consensus REFERENCE \
      ~{optionsOptions} \
      ~{bamBam} \
      ~{referenceReference}
  >>>
}