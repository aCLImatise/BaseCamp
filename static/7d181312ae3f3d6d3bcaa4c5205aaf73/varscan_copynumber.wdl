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
      ~{if (min_base_qual) then "--min-base-qual" else ""} \
      ~{if (min_map_qual) then "--min-map-qual" else ""} \
      ~{if (min_coverage) then "--min-coverage" else ""} \
      ~{if (min_segment_size) then "--min-segment-size" else ""} \
      ~{if (max_segment_size) then "--max-segment-size" else ""} \
      ~{if (p_value) then "--p-value" else ""} \
      ~{if (data_ratio) then "--data-ratio" else ""}
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
  output {
    File out_stdout = stdout()
  }
}