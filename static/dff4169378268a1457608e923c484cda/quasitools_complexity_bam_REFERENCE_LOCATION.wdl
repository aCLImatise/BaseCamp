version 1.0

task QuasitoolsComplexityBamREFERENCELOCATION {
  input {
    String? optionsOptions
    String? referenceReferenceLocation
    String? bamBamLocation
    String? kK
  }
  command <<<
    quasitools complexity bam REFERENCE_LOCATION \
      ~{optionsOptions} \
      ~{referenceReferenceLocation} \
      ~{bamBamLocation} \
      ~{kK}
  >>>
}