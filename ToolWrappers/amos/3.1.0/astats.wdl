version 1.0

task Astats {
  input {
    File bank_path
  }
  command <<<
    astats \
      ~{bank_path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}