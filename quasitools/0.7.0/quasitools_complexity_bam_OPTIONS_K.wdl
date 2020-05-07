version 1.0

task QuasitoolsComplexityBamOPTIONSK {
  input {
    String? referenceReferenceLocation
    String? bamBamLocation
    String? kK
  }
  command <<<
    quasitools complexity bam OPTIONS K \
      ~{referenceReferenceLocation} \
      ~{bamBamLocation} \
      ~{kK}
  >>>
}