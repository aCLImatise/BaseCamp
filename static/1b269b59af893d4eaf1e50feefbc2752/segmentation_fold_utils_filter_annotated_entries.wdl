version 1.0

task SegmentationFoldUtilsFilterAnnotatedEntries {
  input {
    String regexRegex
  }
  command <<<
    segmentation-fold-utils filter-annotated-entries \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""}
  >>>
}