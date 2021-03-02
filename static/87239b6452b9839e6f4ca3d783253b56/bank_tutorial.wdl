version 1.0

task Banktutorial {
  input {
    String bank_name
  }
  command <<<
    bank_tutorial \
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