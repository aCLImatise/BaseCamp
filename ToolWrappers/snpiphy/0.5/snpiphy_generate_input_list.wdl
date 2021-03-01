version 1.0

task SnpiphyGenerateInputList {
  command <<<
    snpiphy_generate_input_list
  >>>
  runtime {
    docker: "quay.io/biocontainers/snpiphy:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}