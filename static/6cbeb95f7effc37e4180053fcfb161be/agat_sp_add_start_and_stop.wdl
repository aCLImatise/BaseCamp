version 1.0

task AgatSpAddStartAndStop.pl {
  input {
    String gffGff
    String fastFastA
    String codonCodon
    String outputOutput
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? agatAgatSpAddStartAndStopPlPl
  }
  command <<<
    agat_sp_add_start_and_stop.pl \
      ~{agatAgatSpAddStartAndStopPlPl} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(codonCodon) then ("--codon " +  '"' + codonCodon + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}