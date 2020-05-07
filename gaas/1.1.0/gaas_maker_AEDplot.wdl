version 1.0

task GaasMakerAEDplot.pl {
  input {
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_maker_AEDplot.pl \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}