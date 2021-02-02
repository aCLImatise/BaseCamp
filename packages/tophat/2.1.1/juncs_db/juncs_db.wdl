version 1.0

task JuncsDb {
  input {
    String min_anchor
    String read_length
  }
  command <<<
    juncs_db \
      ~{min_anchor} \
      ~{read_length}
  >>>
  parameter_meta {
    min_anchor: ""
    read_length: ""
  }
  output {
    File out_stdout = stdout()
  }
}