version 1.0

task MmseqsProfile2pssm {
  input {
    Boolean compCompBiasCorr
    Boolean dbDbOutput
    Boolean subSubMat
    Boolean maxMaxSeqLen
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs profile2pssm \
      ~{true="--comp-bias-corr" false="" compCompBiasCorr} \
      ~{true="--db-output" false="" dbDbOutput} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}