version 1.0

task SegmentationfoldutilsFindboxes {
  input {
    Int? box_one
    Int? box_two
    Boolean? no_forward
    String bed_output_file
  }
  command <<<
    segmentation_fold_utils find_boxes \
      ~{bed_output_file} \
      ~{if defined(box_one) then ("--box1 " +  '"' + box_one + '"') else ""} \
      ~{if defined(box_two) then ("--box2 " +  '"' + box_two + '"') else ""} \
      ~{if (no_forward) then "--no-forward" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    box_one: "Sequence of box1 (default = C-box: 'NRUGAUG')"
    box_two: "Sequence of box2 (default = D-box: 'CUGA')"
    no_forward: "Search in the forward direction of the reference"
    bed_output_file: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}