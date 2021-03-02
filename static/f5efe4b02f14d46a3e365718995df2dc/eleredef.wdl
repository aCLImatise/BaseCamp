version 1.0

task Eleredef {
  input {
    String re_def
    String seq_list
    String start
    String clan_ct
  }
  command <<<
    eleredef \
      ~{re_def} \
      ~{seq_list} \
      ~{start} \
      ~{clan_ct}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    re_def: ""
    seq_list: ""
    start: ""
    clan_ct: ""
  }
  output {
    File out_stdout = stdout()
  }
}