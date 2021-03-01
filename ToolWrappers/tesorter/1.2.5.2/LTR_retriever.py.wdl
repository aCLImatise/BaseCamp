version 1.0

task LTRRetrieverpy {
  command <<<
    LTR_retriever_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}