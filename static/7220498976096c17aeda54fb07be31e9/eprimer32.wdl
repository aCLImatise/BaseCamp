version 1.0

task Eprimer32 {
  input {
    Boolean hybridHybridProbe
    Boolean numNumReturn
    Boolean includedIncludedRegion
    Boolean targetTargetRegion
    Boolean excludedExcludedRegion
    Boolean forwardForwardInput
    Boolean reverseReverseInput
    Boolean okOkLeftRegion
    Boolean okOkRightRegion
  }
  command <<<
    eprimer32 \
      ~{true="-hybridprobe" false="" hybridHybridProbe} \
      ~{true="-numreturn" false="" numNumReturn} \
      ~{true="-includedregion" false="" includedIncludedRegion} \
      ~{true="-targetregion" false="" targetTargetRegion} \
      ~{true="-excludedregion" false="" excludedExcludedRegion} \
      ~{true="-forwardinput" false="" forwardForwardInput} \
      ~{true="-reverseinput" false="" reverseReverseInput} \
      ~{true="-okleftregion" false="" okOkLeftRegion} \
      ~{true="-okrightregion" false="" okOkRightRegion}
  >>>
}