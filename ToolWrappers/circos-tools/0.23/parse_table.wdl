version 1.0

task Parsetable {
  input {
    String cat
    String table_dot_txt
  }
  command <<<
    parse_table \
      ~{cat} \
      ~{table_dot_txt}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: ""
    table_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}