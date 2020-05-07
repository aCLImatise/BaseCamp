version 1.0

task MmseqsCreatedb {
  input {
    Boolean dontDontSplitSeqByLen
    Boolean dontDontShuffle
    Boolean idIdOffset
    Boolean maxMaxSeqLen
    Boolean vV
  }
  command <<<
    mmseqs createdb \
      ~{true="--dont-split-seq-by-len" false="" dontDontSplitSeqByLen} \
      ~{true="--dont-shuffle" false="" dontDontShuffle} \
      ~{true="--id-offset" false="" idIdOffset} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="-v" false="" vV}
  >>>
}