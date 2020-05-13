version 1.0

task AgatSpFilterByMrnaBlastValue.pl {
  input {
    Boolean gffGff
    String blastBlast
    Boolean outfileOutfile
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_filter_by_mrnaBlastValue.pl \
      ~{true="--gff" false="" gffGff} \
      ~{if defined(blastBlast) then ("--blast " +  '"' + blastBlast + '"') else ""} \
      ~{true="--outfile" false="" outfileOutfile} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}