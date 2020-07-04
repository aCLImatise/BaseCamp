version 1.0

task SegmentationFoldUtilsFilterAnnotatedEntries {
  input {
    String? regex
  }
  command <<<
    segmentation-fold-utils filter-annotated-entries \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  parameter_meta {
    regex: "Regex to capture the targeted location in DBN file (default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)' )"
  }
}