version 1.0

task AgatSpComplementAnnotations.pl {
  input {
    String refRef
    String addAdd
    String sizeSizeMin
    String outfileOutfile
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_complement_annotations.pl \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(addAdd) then ("--add " +  '"' + addAdd + '"') else ""} \
      ~{if defined(sizeSizeMin) then ("--size_min " +  '"' + sizeSizeMin + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}