version 1.0

task Testformatsh {
  input {
    File var_file
  }
  command <<<
    testformat_sh \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}