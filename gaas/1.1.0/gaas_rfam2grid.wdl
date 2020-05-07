version 1.0

task GaasRfam2grid.pl {
  input {
    String fastFastA
    Boolean cmCm
    Boolean gridGrid
    String queueQueue
    String quietQuiet
    String outdirOutdir
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_rfam2grid.pl \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--cm" false="" cmCm} \
      ~{true="--grid" false="" gridGrid} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(quietQuiet) then ("--quiet " +  '"' + quietQuiet + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}