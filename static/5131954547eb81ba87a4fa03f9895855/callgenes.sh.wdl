version 1.0

task Callgenessh {
  input {
    String in
  }
  command <<<
    callgenes_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}