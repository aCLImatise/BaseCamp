version 1.0

task KMatch {
  input {
    String query_dot_fa
    String target_dot_fa
    String k
    String output_dot_fa
    String min_length
    String jump
    String max_freq
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_dot_fa: ""
    target_dot_fa: ""
    k: ""
    output_dot_fa: ""
    min_length: ""
    jump: ""
    max_freq: ""
  }
  output {
    File out_stdout = stdout()
  }
}