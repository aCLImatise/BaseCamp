version 1.0

task SegmentationFold {
  input {
    Boolean? s
    String? sequence
  }
  command <<<
    segmentation-fold \
      ~{sequence} \
      ~{true="-s" false="" s}
  >>>
  parameter_meta {
    s: ""
    sequence: ""
  }
}