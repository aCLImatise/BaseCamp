version 1.0

task Mpradataaccessportal {
  input {
    Boolean? self_test
  }
  command <<<
    mpra_data_access_portal \
      ~{if (self_test) then "--self-test" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    self_test: "Run self-check and tests"
  }
  output {
    File out_stdout = stdout()
  }
}