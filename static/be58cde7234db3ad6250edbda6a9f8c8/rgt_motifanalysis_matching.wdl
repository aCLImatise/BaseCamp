version 1.0

task RgtMotifanalysisMatching {
  input {
    File targetTargetGenes
    Boolean makeMakeBackground
    Int promoterPromoterLength
    File outputOutputLocation
    Boolean bigBigBed
    Boolean normalizeNormalizeBitScore
  }
  command <<<
    rgt-motifanalysis matching \
      ~{if defined(targetTargetGenes) then ("--target-genes " +  '"' + targetTargetGenes + '"') else ""} \
      ~{true="--make-background" false="" makeMakeBackground} \
      ~{if defined(promoterPromoterLength) then ("--promoter-length " +  '"' + promoterPromoterLength + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{true="--bigbed" false="" bigBigBed} \
      ~{true="--normalize-bitscore" false="" normalizeNormalizeBitScore}
  >>>
}