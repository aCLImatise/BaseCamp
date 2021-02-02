version 1.0

task Icecreamgradersh {
  input {
    String in
  }
  command <<<
    icecreamgrader_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}