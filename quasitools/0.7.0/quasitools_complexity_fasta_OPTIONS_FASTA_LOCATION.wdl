version 1.0

task QuasitoolsComplexityFastaOPTIONSFASTALOCATION {
  input {
    File outputOutputLocation
  }
  command <<<
    quasitools complexity fasta OPTIONS FASTA_LOCATION \
      ~{if defined(outputOutputLocation) then ("--output_location " +  '"' + outputOutputLocation + '"') else ""}
  >>>
}