version 1.0

task AgatSpFixOverlapingGenes.pl {
  input {
    String fileFile
    String outfileOutfile
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_fix_overlaping_genes.pl \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}