version 1.0

task LTRRetrieverpy {
  command <<<
    LTR_retriever_py
  >>>
  output {
    File out_stdout = stdout()
  }
}