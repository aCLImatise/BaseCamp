version 1.0

task MmseqsResult2msa {
  input {
    Boolean compCompBiasCorr
    Boolean eEProfile
    Boolean filterFilterMsa
    Boolean maxMaxSeqId
    Boolean qidQid
    Boolean qscQsc
    Boolean covCov
    Boolean diffDiff
    Boolean allowAllowDeletion
    Boolean compressCompress
    Boolean summarizeSummarize
    Boolean subSubMat
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs result2msa \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--e-profile" false="" eEProfile} \
      ~{true="--filter-msa" false="" filterFilterMsa} \
      ~{true="--max-seq-id" false="" maxMaxSeqId} \
      ~{true="--qid" false="" qidQid} \
      ~{true="--qsc" false="" qscQsc} \
      ~{true="--cov" false="" covCov} \
      ~{true="--diff" false="" diffDiff} \
      ~{true="--allow-deletion" false="" allowAllowDeletion} \
      ~{true="--compress" false="" compressCompress} \
      ~{true="--summarize" false="" summarizeSummarize} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}