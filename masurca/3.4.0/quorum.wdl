version 1.0

task Quorum {
  input {
    Boolean sizeSize
    Boolean threadsThreads
    Boolean prefixPrefix
    Boolean kmKmErLen
    Boolean minMinQChar
    Boolean minMinQuality
    Boolean windowWindow
    Boolean errorError
    Boolean minMinCount
    Boolean skipSkip
    Boolean anchorAnchor
    Boolean anchorAnchorCount
    Boolean contaminantContaminant
    Boolean trimTrimContaminant
    Boolean noNoDiscard
    Boolean pairedPairedFiles
    Boolean homoHomoTrim
    Boolean debugDebug
  }
  command <<<
    quorum \
      ~{true="--size" false="" sizeSize} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--kmer-len" false="" kmKmErLen} \
      ~{true="--min-q-char" false="" minMinQChar} \
      ~{true="--min-quality" false="" minMinQuality} \
      ~{true="--window" false="" windowWindow} \
      ~{true="--error" false="" errorError} \
      ~{true="--min-count" false="" minMinCount} \
      ~{true="--skip" false="" skipSkip} \
      ~{true="--anchor" false="" anchorAnchor} \
      ~{true="--anchor-count" false="" anchorAnchorCount} \
      ~{true="--contaminant" false="" contaminantContaminant} \
      ~{true="--trim-contaminant" false="" trimTrimContaminant} \
      ~{true="--no-discard" false="" noNoDiscard} \
      ~{true="--paired-files" false="" pairedPairedFiles} \
      ~{true="--homo-trim" false="" homoHomoTrim} \
      ~{true="--debug" false="" debugDebug}
  >>>
}