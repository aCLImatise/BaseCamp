version 1.0

task Bank2coverage {
  input {
    String bank_name
    String out_prefix
  }
  command <<<
    bank2coverage \
      ~{bank_name} \
      ~{out_prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank_name: ""
    out_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}