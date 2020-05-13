version 1.0

task QuasitoolsComplexityBamOPTIONSBAMLOCATION {
  input {
    String? referenceReferenceLocation
    String? bamBamLocation
    String? kK
  }
  command <<<
    quasitools complexity bam OPTIONS BAM_LOCATION \
      ~{referenceReferenceLocation} \
      ~{bamBamLocation} \
      ~{kK}
  >>>
}