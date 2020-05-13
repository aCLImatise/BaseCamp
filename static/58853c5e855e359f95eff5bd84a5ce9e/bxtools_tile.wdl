version 1.0

task BxtoolsTile {
  input {
    Boolean verboseVerbose
    Boolean widthWidth
    Boolean overlapOverlap
    Boolean bedBed
    Boolean tagTag
  }
  command <<<
    bxtools tile \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--width" false="" widthWidth} \
      ~{true="--overlap" false="" overlapOverlap} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--tag" false="" tagTag}
  >>>
}