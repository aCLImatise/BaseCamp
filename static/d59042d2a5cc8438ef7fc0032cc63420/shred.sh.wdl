version 1.0

task Shredsh {
  input {
    String in
  }
  command <<<
    shred_sh \
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