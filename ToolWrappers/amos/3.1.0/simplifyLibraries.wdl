version 1.0

task SimplifyLibraries {
  input {
    String bank_name
  }
  command <<<
    simplifyLibraries \
      ~{bank_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}