version 1.0

task Makeconf {
  input {
    String cat
    String parsed_table_dot_txt
  }
  command <<<
    make_conf \
      ~{cat} \
      ~{parsed_table_dot_txt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: ""
    parsed_table_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}