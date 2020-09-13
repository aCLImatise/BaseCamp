version 1.0

task Synchainmugsy {
  input {
    String mugsy_chaining
    Int max_distance
    Int min_lcb_span
    Int min_stats_len
  }
  command <<<
    synchain_mugsy \
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
  output {
    File out_stdout = stdout()
  }
}