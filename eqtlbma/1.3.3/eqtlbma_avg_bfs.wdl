version 1.0

task EqtlbmaAvgBfs {
  input {
    String bestBestDim
    Boolean allAllDim
    Boolean outOut
    Boolean threadThread
  }
  command <<<
    eqtlbma_avg_bfs \
      ~{if defined(bestBestDim) then ("--bestdim " +  '"' + bestBestDim + '"') else ""} \
      ~{true="--alldim" false="" allAllDim} \
      ~{true="--out" false="" outOut} \
      ~{true="--thread" false="" threadThread}
  >>>
}