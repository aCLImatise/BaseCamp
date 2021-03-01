version 1.0

task LTRRetrieverpy {
  command <<<
    LTR_retriever_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/tesorter:1.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}