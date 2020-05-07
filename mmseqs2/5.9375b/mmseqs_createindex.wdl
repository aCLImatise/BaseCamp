version 1.0

task MmseqsCreateindex {
  input {
    Boolean kK
    Boolean alphAlphSize
    Boolean maskMask
    Boolean spacedSpacedKmErMode
    Boolean sS
    Boolean kKScore
    Boolean splitSplit
    Boolean splitSplitMemoryLimit
    Boolean includeIncludeHeaders
    Boolean minMinLength
    Boolean maxMaxLength
    Boolean maxMaxGaps
    Boolean contigContigStartMode
    Boolean contigContigEndMode
    Boolean orfOrfStartMode
    Boolean forwardForwardFrames
    Boolean reverseReverseFrames
    Boolean translationTranslationTable
    Boolean useUseAllTableStarts
    Boolean idIdOffset
    Boolean addAddOrfStop
    Boolean subSubMat
    Boolean maxMaxSeqs
    Boolean maxMaxSeqLen
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs createindex \
      ~{true="-k" false="" kK} \
      ~{true="--alph-size" false="" alphAlphSize} \
      ~{true="--mask" false="" maskMask} \
      ~{true="--spaced-kmer-mode" false="" spacedSpacedKmErMode} \
      ~{true="-s" false="" sS} \
      ~{true="--k-score" false="" kKScore} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--split-memory-limit" false="" splitSplitMemoryLimit} \
      ~{true="--include-headers" false="" includeIncludeHeaders} \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--max-length" false="" maxMaxLength} \
      ~{true="--max-gaps" false="" maxMaxGaps} \
      ~{true="--contig-start-mode" false="" contigContigStartMode} \
      ~{true="--contig-end-mode" false="" contigContigEndMode} \
      ~{true="--orf-start-mode" false="" orfOrfStartMode} \
      ~{true="--forward-frames" false="" forwardForwardFrames} \
      ~{true="--reverse-frames" false="" reverseReverseFrames} \
      ~{true="--translation-table" false="" translationTranslationTable} \
      ~{true="--use-all-table-starts" false="" useUseAllTableStarts} \
      ~{true="--id-offset" false="" idIdOffset} \
      ~{true="--add-orf-stop" false="" addAddOrfStop} \
      ~{true="--sub-mat" false="" subSubMat} \
      ~{true="--max-seqs" false="" maxMaxSeqs} \
      ~{true="--max-seq-len" false="" maxMaxSeqLen} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}