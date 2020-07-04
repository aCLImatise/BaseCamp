version 1.0

task Convertlinks {
  input {
    String cat
    String links_dot_txt
  }
  command <<<
    convertlinks \
      ~{cat} \
      ~{links_dot_txt}
  >>>
  parameter_meta {
    cat: ""
    links_dot_txt: ""
  }
}