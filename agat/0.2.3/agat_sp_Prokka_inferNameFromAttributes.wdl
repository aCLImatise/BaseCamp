version 1.0

task AgatSpProkkaInferNameFromAttributes.pl {
  input {
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_Prokka_inferNameFromAttributes.pl \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}