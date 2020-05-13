version 1.0

task Eprimer3 {
  input {
    Boolean hybridHybridProbe
    Boolean numNumReturn
    Boolean includedIncludedRegion
    Boolean targetTargetRegion
    Boolean excludedExcludedRegion
    Boolean forwardForwardInput
    Boolean reverseReverseInput
  }
  command <<<
    eprimer3 \
      ~{true="-hybridprobe" false="" hybridHybridProbe} \
      ~{true="-numreturn" false="" numNumReturn} \
      ~{true="-includedregion" false="" includedIncludedRegion} \
      ~{true="-targetregion" false="" targetTargetRegion} \
      ~{true="-excludedregion" false="" excludedExcludedRegion} \
      ~{true="-forwardinput" false="" forwardForwardInput} \
      ~{true="-reverseinput" false="" reverseReverseInput}
  >>>
}