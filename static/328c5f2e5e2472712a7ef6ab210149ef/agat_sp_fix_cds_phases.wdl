version 1.0

task AgatSpFixCdsPhases.pl {
  input {
    String gffGff
    String fastFastA
    String codonCodon
    String verboseVerbose
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? agatAgatSpFixCdsFramePl
  }
  command <<<
    agat_sp_fix_cds_phases.pl \
      ~{agatAgatSpFixCdsFramePl} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(codonCodon) then ("--codon " +  '"' + codonCodon + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}