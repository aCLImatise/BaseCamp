version 1.0

task SegmentationfoldutilsFindboxes {
  input {
    Int? box_one
    Int? box_two
    Boolean? forward
    String bed_output_file
  }
  command <<<
    segmentation_fold_utils find_boxes \
      ~{bed_output_file} \
      ~{if defined(box_one) then ("--box1 " +  '"' + box_one + '"') else ""} \
      ~{if defined(box_two) then ("--box2 " +  '"' + box_two + '"') else ""} \
      ~{if (forward) then "--forward" else ""}
  >>>
  parameter_meta {
    box_one: "Sequence of box1 (default = C-box: 'NRUGAUG')"
    box_two: "Sequence of box2 (default = D-box: 'CUGA')"
    forward: "/ --no-forward  Search in the forward direction of the reference"
    bed_output_file: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}