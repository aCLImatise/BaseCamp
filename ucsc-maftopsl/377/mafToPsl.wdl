version 1.0

task MafToPsl {
  input {
    String query_src
    String target_src
    String in_dot_maf
    String out_dot_psl
  }
  command <<<
    mafToPsl \
      ~{query_src} \
      ~{target_src} \
      ~{in_dot_maf} \
      ~{out_dot_psl}
  >>>
  parameter_meta {
    query_src: ""
    target_src: ""
    in_dot_maf: ""
    out_dot_psl: ""
  }
}