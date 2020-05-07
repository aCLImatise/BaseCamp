version 1.0

task MmseqsAlign {
  input {
    Boolean compCompBiasCorr
    Boolean addAddSelfMatches
    Boolean aA
    Boolean alignmentAlignmentMode
    Boolean eE
    Boolean minMinSeqId
    Boolean seqSeqIdMode
    Boolean altAltAli
    Boolean cC
    Boolean covCovMode
    Boolean realignRealign
    Boolean maxMaxRejected
    Boolean maxMaxAccept
    Boolean scoreScoreBias
    Boolean pcPcA
    Boolean pcbPcb
    Boolean noNoPreload
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean maxMaxSeqs
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs align \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="-a" false="" aA} \
      ~{true="--alignment-mode" false="" alignmentAlignmentMode} \
      ~{true="-e" false="" eE} \
      ~{true="--min-seq-id" false="" minMinSeqId} \
      ~{true="--seq-id-mode" false="" seqSeqIdMode} \
      ~{true="--alt-ali" false="" altAltAli} \
      ~{true="-c" false="" cC} \
      ~{true="--cov-mode" false="" covCovMode} \
      ~{true="--realign" false="" realignRealign} \
      ~{true="--max-rejected" false="" maxMaxRejected} \
      ~{true="--max-accept" false="" maxMaxAccept} \
      ~{true="--score-bias" false="" scoreScoreBias} \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--no-preload" false="" noNoPreload} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--max-seqs" false="" maxMaxSeqs} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}