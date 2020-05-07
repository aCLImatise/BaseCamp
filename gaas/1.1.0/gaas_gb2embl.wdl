version 1.0

task GaasGb2embl.pl {
  input {
    Boolean gbGb
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_gb2embl.pl \
      ~{true="--gb" false="" gbGb} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}