version 1.0

task UpdateBankPositions {
  input {
    String bank_name
    String pos_file
  }
  command <<<
    updateBankPositions \
      ~{bank_name} \
      ~{pos_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank_name: ""
    pos_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}