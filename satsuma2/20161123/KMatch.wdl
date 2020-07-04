version 1.0

task KMatch {
  input {
    String query_dot_fa
    String target_dot_fa
    String k
    String output_dot_fa
    Int min_length
    String jump
    Int max_freq
  }
  command <<<
    KMatch \
      ~{query_dot_fa} \
      ~{target_dot_fa} \
      ~{k} \
      ~{output_dot_fa} \
      ~{min_length} \
      ~{jump} \
      ~{max_freq}
  >>>
  parameter_meta {
    query_dot_fa: ""
    target_dot_fa: ""
    k: ""
    output_dot_fa: ""
    min_length: ""
    jump: ""
    max_freq: ""
  }
}