version 1.0

task GaasTblastn2grid.pl {
  input {
    String fastFastA
    Boolean dbDb
    Boolean chunkChunkSize
    Boolean nbNbSeq
    Boolean evalEval
    String queueQueue
    Boolean gridGrid
    String quietQuiet
    Boolean outdirOutdir
    String? 100100
    String? 1e1e6
  }
  command <<<
    gaas_tblastn2grid.pl \
      ~{100100} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--db" false="" dbDb} \
      ~{true="--chunk_size" false="" chunkChunkSize} \
      ~{true="--nb_seq" false="" nbNbSeq} \
      ~{true="--eval" false="" evalEval} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{true="--grid" false="" gridGrid} \
      ~{if defined(quietQuiet) then ("--quiet " +  '"' + quietQuiet + '"') else ""} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{1e1e6}
  >>>
}