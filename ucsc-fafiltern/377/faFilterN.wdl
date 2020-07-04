version 1.0

task FaFilterN {
  input {
    String in_dot_fa
    String out_dot_fa
    Int max_percent_n
  }
  command <<<
    faFilterN \
      ~{in_dot_fa} \
      ~{out_dot_fa} \
      ~{max_percent_n}
  >>>
  parameter_meta {
    in_dot_fa: ""
    out_dot_fa: ""
    max_percent_n: ""
  }
}