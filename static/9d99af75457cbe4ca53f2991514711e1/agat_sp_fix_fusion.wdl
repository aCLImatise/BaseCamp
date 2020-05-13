version 1.0

task AgatSpFixFusion.pl {
  input {
    Boolean gffGff
    String fastFastA
    String codonCodon
    String thresholdThreshold
    String strandedStranded
    String verboseVerbose
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_fix_fusion.pl \
      ~{true="-gff" false="" gffGff} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(codonCodon) then ("--codon " +  '"' + codonCodon + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(strandedStranded) then ("--stranded " +  '"' + strandedStranded + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}