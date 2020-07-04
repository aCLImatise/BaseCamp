version 1.0

task Calcdatarange {
  input {
    String cat
    String data_dot_txt
  }
  command <<<
    calcdatarange \
      ~{cat} \
      ~{data_dot_txt}
  >>>
  parameter_meta {
    cat: ""
    data_dot_txt: ""
  }
}