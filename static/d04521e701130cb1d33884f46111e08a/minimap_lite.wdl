version 1.0

task Minimaplite {
  input {
    String target_dot_fa
    String query_dot_fa
  }
  command <<<
    minimap_lite \
      ~{target_dot_fa} \
      ~{query_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_dot_fa: ""
    query_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}