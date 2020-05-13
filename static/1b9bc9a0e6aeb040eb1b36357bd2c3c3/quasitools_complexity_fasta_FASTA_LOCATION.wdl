version 1.0

task QuasitoolsComplexityFastaFASTALOCATION {
  input {
    String? optionsOptions
    String? fastFastALocation
  }
  command <<<
    quasitools complexity fasta FASTA_LOCATION \
      ~{optionsOptions} \
      ~{fastFastALocation}
  >>>
}