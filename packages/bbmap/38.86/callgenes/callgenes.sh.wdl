version 1.0

task Callgenessh {
  input {
    String in
  }
  command <<<
    callgenes_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}