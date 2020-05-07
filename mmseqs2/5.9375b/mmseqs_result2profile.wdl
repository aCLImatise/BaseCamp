version 1.0

task MmseqsResult2profile {
  input {
    Boolean compCompBiasCorr
    Boolean maskMaskProfile
    Boolean eEProfile
    Boolean wgWg
    Boolean filterFilterMsa
    Boolean maxMaxSeqId
    Boolean qidQid
    Boolean qscQsc
    Boolean covCov
    Boolean diffDiff
    Boolean pcPcA
    Boolean pcbPcb
    Boolean noNoPreload
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs result2profile \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--mask-profile" false="" maskMaskProfile} \
      ~{true="--e-profile" false="" eEProfile} \
      ~{true="--wg" false="" wgWg} \
      ~{true="--filter-msa" false="" filterFilterMsa} \
      ~{true="--max-seq-id" false="" maxMaxSeqId} \
      ~{true="--qid" false="" qidQid} \
      ~{true="--qsc" false="" qscQsc} \
      ~{true="--cov" false="" covCov} \
      ~{true="--diff" false="" diffDiff} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}