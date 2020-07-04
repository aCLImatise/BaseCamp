version 1.0

task SegmentationFoldUtilsExtractBoxedSequences {
  input {
    Int? max_inner_dist
    Int? bp_extension
  }
  command <<<
    segmentation-fold-utils extract-boxed-sequences \
      ~{if defined(max_inner_dist) then ("--max-inner-dist " +  '"' + max_inner_dist + '"') else ""} \
      ~{if defined(bp_extension) then ("--bp-extension " +  '"' + bp_extension + '"') else ""}
  >>>
  parameter_meta {
    max_inner_dist: "Maximal distance between the boxes (default=250bp)"
    bp_extension: "Extend extracted sequences with this number of bases (default: 10bp)"
  }
}