version 1.0

task QuasitoolsComplexityBamBAMLOCATION {
  input {
    String? optionsOptions
    String? referenceReferenceLocation
    String? bamBamLocation
    String? kK
  }
  command <<<
    quasitools complexity bam BAM_LOCATION \
      ~{optionsOptions} \
      ~{referenceReferenceLocation} \
      ~{bamBamLocation} \
      ~{kK}
  >>>
}