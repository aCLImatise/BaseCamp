version 1.0

task Reaper {
  input {
    String int_minimum_length
    String int_maximum_allowed_distance
    String int_maximum_allowed_number
    String int_offset_o
    String read
    String read_identifier
    String quality_scores
    String discard_field
  }
  command <<<
    reaper \
      ~{int_minimum_length} \
      ~{int_maximum_allowed_distance} \
      ~{int_maximum_allowed_number} \
      ~{int_offset_o} \
      ~{read} \
      ~{read_identifier} \
      ~{quality_scores} \
      ~{discard_field}
  >>>
  parameter_meta {
    int_minimum_length: "<int> minimum length required to count sub-alignment as match"
    int_maximum_allowed_distance: "<int> maximum allowed edit distance"
    int_maximum_allowed_number: "<int> [optional, not active when set to 0] maximum allowed number of gaps"
    int_offset_o: "<int> [optional, not active when set to 0] offset: o= 5  requires alignment to start in the first five bases of adaptor o=-5  requires alignment to end in the last five bases of adaptor"
    read: "read"
    read_identifier: "read identifier"
    quality_scores: "quality scores"
    discard_field: "discard field"
  }
}