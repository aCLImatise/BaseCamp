version 1.0

task ChopFaLines {
  input {
    String in_dot_fa
    String out_dot_fa
  }
  command <<<
    chopFaLines \
      ~{in_dot_fa} \
      ~{out_dot_fa}
  >>>
  parameter_meta {
    in_dot_fa: ""
    out_dot_fa: ""
  }
}