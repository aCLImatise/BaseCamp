version 1.0

task MakeConf {
  input {
    String cat
    String parsed_table_dot_txt
  }
  command <<<
    make-conf \
      ~{cat} \
      ~{parsed_table_dot_txt}
  >>>
  parameter_meta {
    cat: ""
    parsed_table_dot_txt: ""
  }
}