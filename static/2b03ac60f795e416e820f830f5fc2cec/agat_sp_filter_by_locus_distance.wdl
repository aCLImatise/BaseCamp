version 1.0

task AgatSpFilterByLocusDistance.pl {
  input {
    Boolean gffGff
    String distDist
    String addAddFlag
    Boolean oO
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_filter_by_locus_distance.pl \
      ~{true="-gff" false="" gffGff} \
      ~{if defined(distDist) then ("--dist " +  '"' + distDist + '"') else ""} \
      ~{if defined(addAddFlag) then ("--add_flag " +  '"' + addAddFlag + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}