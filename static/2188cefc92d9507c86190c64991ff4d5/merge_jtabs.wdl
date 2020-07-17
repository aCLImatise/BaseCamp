version 1.0

task MergeJtabs {
  input {
    String rep_one_slash_jun_cs_dot_all
  }
  command <<<
    merge_jtabs \
      ~{rep_one_slash_jun_cs_dot_all}
  >>>
  parameter_meta {
    rep_one_slash_jun_cs_dot_all: ""
  }
}