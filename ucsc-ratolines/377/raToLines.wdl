version 1.0

task RaToLines {
  input {
    String in_do_tra
    String out_dot_txt
  }
  command <<<
    raToLines \
      ~{in_do_tra} \
      ~{out_dot_txt}
  >>>
  parameter_meta {
    in_do_tra: ""
    out_dot_txt: ""
  }
}