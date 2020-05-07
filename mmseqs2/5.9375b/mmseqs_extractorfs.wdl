version 1.0

task MmseqsExtractorfs {
  input {
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
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs extractorfs \
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
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}