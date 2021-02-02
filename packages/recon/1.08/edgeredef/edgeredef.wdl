version 1.0

task Edgeredef {
  input {
    String fam_def
    String seq_list
    String start
  }
  command <<<
    edgeredef \
      ~{fam_def} \
      ~{seq_list} \
      ~{start}
  >>>
  parameter_meta {
    fam_def: ""
    seq_list: ""
    start: ""
  }
  output {
    File out_stdout = stdout()
  }
}