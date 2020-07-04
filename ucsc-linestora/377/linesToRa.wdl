version 1.0

task LinesToRa {
  input {
    String in_dot_txt
    String out_do_tra
  }
  command <<<
    linesToRa \
      ~{in_dot_txt} \
      ~{out_do_tra}
  >>>
  parameter_meta {
    in_dot_txt: ""
    out_do_tra: ""
  }
}