version 1.0

task MinimapLite {
  input {
    String target_dot_fa
    String query_dot_fa
  }
  command <<<
    minimap-lite \
      ~{target_dot_fa} \
      ~{query_dot_fa}
  >>>
  parameter_meta {
    target_dot_fa: ""
    query_dot_fa: ""
  }
}