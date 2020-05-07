version 1.0

task QuasitoolsConsensusBAM {
  input {
    String? optionsOptions
    String? bamBam
    String? referenceReference
  }
  command <<<
    quasitools consensus BAM \
      ~{optionsOptions} \
      ~{bamBam} \
      ~{referenceReference}
  >>>
}