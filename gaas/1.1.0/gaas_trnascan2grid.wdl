version 1.0

task GaasTrnascan2grid.pl {
  input {
    String fastFastA
    String queueQueue
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
    gaas_trnascan2grid.pl \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
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