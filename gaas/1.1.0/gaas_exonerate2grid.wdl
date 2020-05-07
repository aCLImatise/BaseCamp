version 1.0

task GaasExonerate2grid.pl {
  input {
    String genomeGenome
    Boolean proteinProtein
    String queueQueue
    Boolean gridGrid
    String quietQuiet
    String outdirOutdir
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_exonerate2grid.pl \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{true="--grid" false="" gridGrid} \
      ~{if defined(quietQuiet) then ("--quiet " +  '"' + quietQuiet + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}