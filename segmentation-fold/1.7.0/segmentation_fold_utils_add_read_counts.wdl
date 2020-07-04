version 1.0

task SegmentationFoldUtilsAddReadCounts {
  input {
    String? regex
    String dbn_input_file
  }
  command <<<
    segmentation-fold-utils add-read-counts \
      ~{dbn_input_file} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  parameter_meta {
    regex: "Regex to capture the targeted location in DBN file (default: '>.*?(chr[^:]):([0-9]+)-([0-9]+)' )"
    dbn_input_file: ""
  }
}