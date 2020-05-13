version 1.0

task GaasFastaGetLongestORF.pl {
  input {
    String fastFastA
    String sizeSizeMin
    String tableTable
    Boolean forceForceStartCodon
    Boolean forceForceComplete
    Boolean keepKeepAllOrf
    Boolean vV
    String outfileOutfile
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_fasta_get_longestORF.pl \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(sizeSizeMin) then ("--size_min " +  '"' + sizeSizeMin + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--force_start_codon" false="" forceForceStartCodon} \
      ~{true="--force_complete" false="" forceForceComplete} \
      ~{true="--keep_all_orf" false="" keepKeepAllOrf} \
      ~{true="-v" false="" vV} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}