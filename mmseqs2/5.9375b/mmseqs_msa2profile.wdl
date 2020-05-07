version 1.0

task MmseqsMsa2profile {
  input {
    Boolean compCompBiasCorr
    Boolean matchMatchMode
    Boolean matchMatchRatio
    Boolean pcPcA
    Boolean pcbPcb
    Boolean wgWg
    Boolean filterFilterMsa
    Boolean covCov
    Boolean qidQid
    Boolean qscQsc
    Boolean maxMaxSeqId
    Boolean diffDiff
    Boolean msaMsaType
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs msa2profile \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--match-mode" false="" matchMatchMode} \
      ~{true="--match-ratio" false="" matchMatchRatio} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--wg" false="" wgWg} \
      ~{true="--filter-msa" false="" filterFilterMsa} \
      ~{true="--cov" false="" covCov} \
      ~{true="--qid" false="" qidQid} \
      ~{true="--qsc" false="" qscQsc} \
      ~{true="--max-seq-id" false="" maxMaxSeqId} \
      ~{true="--diff" false="" diffDiff} \
      ~{true="--msa-type" false="" msaMsaType} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}