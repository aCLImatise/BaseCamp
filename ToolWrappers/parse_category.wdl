version 1.0

task Parsecategory {
  input {
    String cat
    String data_dot_txt
  }
  command <<<
    parse_category \
      ~{cat} \
      ~{data_dot_txt}
  >>>
  parameter_meta {
    cat: ""
    data_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}