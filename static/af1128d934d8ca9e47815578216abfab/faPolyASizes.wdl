version 1.0

task FaPolyASizes {
  input {
    String in_dot_fa
    String out_dot_tab
  }
  command <<<
    faPolyASizes \
      ~{in_dot_fa} \
      ~{out_dot_tab}
  >>>
  parameter_meta {
    in_dot_fa: ""
    out_dot_tab: ""
  }
}