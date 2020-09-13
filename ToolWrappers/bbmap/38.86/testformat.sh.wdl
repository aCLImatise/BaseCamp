version 1.0

task Testformatsh {
  input {
    File file
  }
  command <<<
    testformat_sh \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}