version 1.0

task GaasFastaDomainExtractor.pl {
  input {
    String iI
    String sS
    String eE
    String oO
    String nN
    String? fastFastADomainExtractorPl
  }
  command <<<
    gaas_fasta_domain_extractor.pl \
      ~{fastFastADomainExtractorPl} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}