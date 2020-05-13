version 1.0

task SegmentationFoldUtilsAddReadCounts {
  input {
    String regexRegex
  }
  command <<<
    segmentation-fold-utils add-read-counts \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""}
  >>>
}