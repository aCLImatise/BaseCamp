version 1.0

task ParseTable {
  input {
    String cat
    String table_dot_txt
  }
  command <<<
    parse-table \
      ~{cat} \
      ~{table_dot_txt}
  >>>
  parameter_meta {
    cat: ""
    table_dot_txt: ""
  }
}