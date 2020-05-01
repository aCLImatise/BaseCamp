version 1.0

task GaasScreenMitoTblastn.pl {
  input {
    Boolean tabTab
    String outputOutput
    String genomeGenome
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_screen_mito_tblastn.pl \
      ~{true="--tab" false="" tabTab} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}