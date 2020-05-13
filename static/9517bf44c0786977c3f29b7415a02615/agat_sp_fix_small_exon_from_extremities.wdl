version 1.0

task AgatSpFixSmallExonFromExtremities.pl {
  input {
    Boolean gffGff
    String fastFastA
    String tableTable
    String sizeSize
    Boolean oO
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? agatAgatFixSmallExonFromExtremitiesPl
  }
  command <<<
    agat_sp_fix_small_exon_from_extremities.pl \
      ~{agatAgatFixSmallExonFromExtremitiesPl} \
      ~{true="-gff" false="" gffGff} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}