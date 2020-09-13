version 1.0

task Banktutorial {
  input {
    String bank_name_slash
  }
  command <<<
    bank_tutorial \
      ~{bank_name_slash}
  >>>
  parameter_meta {
    bank_name_slash: ""
  }
  output {
    File out_stdout = stdout()
  }
}