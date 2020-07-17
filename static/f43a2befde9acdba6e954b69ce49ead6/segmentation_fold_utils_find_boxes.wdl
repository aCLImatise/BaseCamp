version 1.0

task SegmentationFoldUtilsFindBoxes {
  input {
    String? box_one
    String? box_two
    Boolean? forward
    Boolean? reverse
    String fast_a_input_file
  }
  command <<<
    segmentation-fold-utils find-boxes \
      ~{fast_a_input_file} \
      ~{if defined(box_one) then ("--box1 " +  '"' + box_one + '"') else ""} \
      ~{if defined(box_two) then ("--box2 " +  '"' + box_two + '"') else ""} \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse}
  >>>
  parameter_meta {
    box_one: "Sequence of box1 (default = C-box: 'NRUGAUG')"
    box_two: "Sequence of box2 (default = D-box: 'CUGA')"
    forward: "/ --no-forward  Search in the forward direction of the reference sequence"
    reverse: "/ --no-reverse  Search in the reverse complement of the reference sequence"
    fast_a_input_file: ""
  }
}