version 1.0

task MmseqsSequence2profile {
  input {
    Boolean pcPcA
    Boolean pcbPcb
    Boolean neffNeff
    Boolean tauTau
    Boolean threadsThreads
    Boolean subSubMat
    Boolean vV
  }
  command <<<
    mmseqs sequence2profile \
      ~{true="--pca" false="" pcPcA} \
      ~{true="--pcb" false="" pcbPcb} \
      ~{true="--neff" false="" neffNeff} \
      ~{true="--tau" false="" tauTau} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="-v" false="" vV}
  >>>
}