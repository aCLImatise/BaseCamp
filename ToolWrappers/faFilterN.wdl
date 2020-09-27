version 1.0

task FaFilterN {
  input {
    String in_dot_fa
    String out_dot_fa
  }
  command <<<
    faFilterN \
      ~{in_dot_fa} \
      ~{out_dot_fa}
  >>>
  parameter_meta {
    in_dot_fa: ""
    out_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}