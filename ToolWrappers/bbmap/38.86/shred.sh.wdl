version 1.0

task Shredsh {
  input {
    String in
  }
  command <<<
    shred_sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}