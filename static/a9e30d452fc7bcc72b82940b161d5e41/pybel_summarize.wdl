version 1.0

task PybelSummarize {
  input {
    File path
  }
  command <<<
    pybel summarize \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}