version 1.0

task Segtoolscompare {
  input {
    Boolean? edit_distance
    Boolean? quick
    Boolean? quiet
    String segmentation
  }
  command <<<
    segtools_compare \
      ~{segmentation} \
      ~{if (edit_distance) then "--edit-distance" else ""} \
      ~{if (quick) then "--quick" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    edit_distance: "Measure the base-wise edit distance between the two\\nspecified segmentations"
    quick: "Compute values only for one chromosome."
    quiet: "Do not print diagnostic messages."
    segmentation: ""
  }
  output {
    File out_stdout = stdout()
  }
}