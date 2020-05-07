version 1.0

task GaasBlastp2grid.pl {
  input {
    String fastFastA
    Boolean dbDb
    Boolean nbNbSeq
    Boolean evalEval
    Boolean chunkChunkSize
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
    gaas_blastp2grid.pl \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--db" false="" dbDb} \
      ~{true="--nb_seq" false="" nbNbSeq} \
      ~{true="--eval" false="" evalEval} \
      ~{true="--chunk_size" false="" chunkChunkSize} \
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