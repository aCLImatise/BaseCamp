version 1.0

task VarscanCopynumber {
  input {
    Boolean? min_base_qual
    Boolean? min_map_qual
    Boolean? min_coverage
    Boolean? min_segment_size
    Boolean? max_segment_size
    Boolean? p_value
    Boolean? data_ratio
    String? normal_pile_up
    String? tumor_pile_up
  }
  command <<<
    varscan copynumber \
      ~{normal_pile_up} \
      ~{tumor_pile_up} \
      ~{true="--min-base-qual" false="" min_base_qual} \
      ~{true="--min-map-qual" false="" min_map_qual} \
      ~{true="--min-coverage" false="" min_coverage} \
      ~{true="--min-segment-size" false="" min_segment_size} \
      ~{true="--max-segment-size" false="" max_segment_size} \
      ~{true="--p-value" false="" p_value} \
      ~{true="--data-ratio" false="" data_ratio}
  >>>
  parameter_meta {
    min_base_qual: "- Minimum base quality to count for coverage [20]"
    min_map_qual: "- Minimum read mapping quality to count for coverage [20]"
    min_coverage: "- Minimum coverage threshold for copynumber segments [20]"
    min_segment_size: "- Minimum number of consecutive bases to report a segment [10]"
    max_segment_size: "- Max size before a new segment is made [100]"
    p_value: "- P-value threshold for significant copynumber change-point [0.01]"
    data_ratio: "- The normal/tumor input data ratio for copynumber adjustment [1.0]"
    normal_pile_up: ""
    tumor_pile_up: ""
  }
}