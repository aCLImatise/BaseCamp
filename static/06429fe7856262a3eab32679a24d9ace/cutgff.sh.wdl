version 1.0

task Cutgffsh {
  input {
    String in
  }
  command <<<
    cutgff_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}