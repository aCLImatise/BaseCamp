version 1.0

task QuasitoolsComplexityBamOPTIONSREFERENCELOCATIONK {
  input {
    String? bamBamLocation
    String? kK
  }
  command <<<
    quasitools complexity bam OPTIONS REFERENCE_LOCATION K \
      ~{bamBamLocation} \
      ~{kK}
  >>>
}