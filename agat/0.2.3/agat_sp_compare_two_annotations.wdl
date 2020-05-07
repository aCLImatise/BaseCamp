version 1.0

task AgatSpCompareTwoAnnotations.pl {
  input {
    Boolean gff1Gff1
    Boolean gff2Gff2
    Boolean oO
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_compare_two_annotations.pl \
      ~{true="-gff1" false="" gff1Gff1} \
      ~{true="-gff2" false="" gff2Gff2} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}