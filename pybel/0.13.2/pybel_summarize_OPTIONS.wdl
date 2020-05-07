version 1.0

task PybelSummarizeOPTIONS {
  input {
    File? pathPath
  }
  command <<<
    pybel summarize OPTIONS \
      ~{pathPath}
  >>>
}