version 1.0

task SynchainMugsy {
  input {
    String mugsy_chaining
    Int max_distance
    Int min_lcb_span
    Int min_stats_len
  }
  command <<<
    synchain-mugsy \
      ~{mugsy_chaining} \
      ~{max_distance} \
      ~{min_lcb_span} \
      ~{min_stats_len}
  >>>
  parameter_meta {
    mugsy_chaining: ""
    max_distance: ""
    min_lcb_span: ""
    min_stats_len: ""
  }
}