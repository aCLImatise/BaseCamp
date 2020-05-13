version 1.0

task QuasitoolsComplexityBamK {
  input {
    String? optionsOptions
    String? referenceReferenceLocation
    String? bamBamLocation
    String? kK
  }
  command <<<
    quasitools complexity bam K \
      ~{optionsOptions} \
      ~{referenceReferenceLocation} \
      ~{bamBamLocation} \
      ~{kK}
  >>>
}