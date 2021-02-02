version 1.0

task UpdateLibSizes {
  input {
    String bank_name
  }
  command <<<
    updateLibSizes \
      ~{bank_name}
  >>>
  parameter_meta {
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}