version 1.0

task ParseCategory {
  input {
    String cat
    String data_dot_txt
  }
  command <<<
    parse-category \
      ~{cat} \
      ~{data_dot_txt}
  >>>
  parameter_meta {
    cat: ""
    data_dot_txt: ""
  }
}