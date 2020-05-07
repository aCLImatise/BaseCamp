version 1.0

task AgatConvertSpGff2zff.pl {
  input {
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_convert_sp_gff2zff.pl \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}