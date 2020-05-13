version 1.0

task AgatSpToTabulated.pl {
  input {
    String gffGff
    String ctCt
    String mergeMergeLoci
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_to_tabulated.pl \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(ctCt) then ("--ct " +  '"' + ctCt + '"') else ""} \
      ~{if defined(mergeMergeLoci) then ("--merge_loci " +  '"' + mergeMergeLoci + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}