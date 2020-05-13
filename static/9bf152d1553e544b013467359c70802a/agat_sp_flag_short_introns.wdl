version 1.0

task AgatSpFlagShortIntrons.pl {
  input {
    String refRefFile
    String intronIntronSize
    String outputOutput
    Boolean vV
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_flag_short_introns.pl \
      ~{if defined(refRefFile) then ("-reffile " +  '"' + refRefFile + '"') else ""} \
      ~{if defined(intronIntronSize) then ("--intron_size " +  '"' + intronIntronSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}