version 1.0

task Bankcombine {
  input {
    String in_n
  }
  command <<<
    bank_combine \
      ~{in_n}
  >>>
  parameter_meta {
    in_n: ""
  }
  output {
    File out_stdout = stdout()
  }
}