version 1.0

task Comparegffsh {
  input {
    String in
  }
  command <<<
    comparegff_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}