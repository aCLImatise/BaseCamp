version 1.0

task MafToPsl {
  input {
    String query_src
    String target_src
    String in_dot_maf
  }
  command <<<
    mafToPsl \
      ~{query_src} \
      ~{target_src} \
      ~{in_dot_maf}
  >>>
  parameter_meta {
    query_src: ""
    target_src: ""
    in_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}