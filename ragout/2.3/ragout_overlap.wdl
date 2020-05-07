version 1.0

task RagoutOverlap {
  input {
    Boolean detectDetectKmEr
    Boolean histHist
    String? overlapOverlap
    String? fastFastAIn
    String? dotDotOut
    Int? minMinK
    Int? maxMaxK
  }
  command <<<
    ragout-overlap \
      ~{overlapOverlap} \
      ~{true="--detect-kmer" false="" detectDetectKmEr} \
      ~{true="--hist" false="" histHist} \
      ~{fastFastAIn} \
      ~{dotDotOut} \
      ~{minMinK} \
      ~{maxMaxK}
  >>>
}