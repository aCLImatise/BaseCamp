version 1.0

task GaasScipio2grid.pl {
  input {
    String queueQueue
    Boolean gridGrid
    String outdirOutdir
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? gaasGaasScipioGridPl
  }
  command <<<
    gaas_scipio2grid.pl \
      ~{gaasGaasScipioGridPl} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{true="--grid" false="" gridGrid} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}