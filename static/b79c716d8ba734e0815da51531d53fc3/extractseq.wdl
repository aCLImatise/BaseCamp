version 1.0

task Extractseq {
  input {
    Boolean? regions
  }
  command <<<
    extractseq \
      ~{true="-regions" false="" regions}
  >>>
  parameter_meta {
    regions: "range      [Whole sequence] Regions to extract. A set of regions is specified by a set of pairs of positions. The positions are integers. They are separated by any non-digit, non-alpha character. Examples of region specifications are: 24-45, 56-78 1:45, 67=99;765..888 1,5,8,10,23,45,57,99"
  }
}