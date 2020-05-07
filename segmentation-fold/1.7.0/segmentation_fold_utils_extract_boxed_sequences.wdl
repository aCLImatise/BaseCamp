version 1.0

task SegmentationFoldUtilsExtractBoxedSequences {
  input {
    Int maxMaxInnerDist
    Int bpBpExtension
  }
  command <<<
    segmentation-fold-utils extract-boxed-sequences \
      ~{if defined(maxMaxInnerDist) then ("--max-inner-dist " +  '"' + maxMaxInnerDist + '"') else ""} \
      ~{if defined(bpBpExtension) then ("--bp-extension " +  '"' + bpBpExtension + '"') else ""}
  >>>
}