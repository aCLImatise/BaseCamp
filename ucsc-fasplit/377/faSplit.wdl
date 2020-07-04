version 1.0

task FaSplit {
  input {
    String how
    String input_dot_fa
    String count
    String out_root
  }
  command <<<
    faSplit \
      ~{how} \
      ~{input_dot_fa} \
      ~{count} \
      ~{out_root}
  >>>
  parameter_meta {
    how: ""
    input_dot_fa: ""
    count: ""
    out_root: ""
  }
}