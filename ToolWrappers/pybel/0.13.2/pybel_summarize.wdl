version 1.0

task PybelSummarize {
  input {
    File path
  }
  command <<<
    pybel summarize \
      ~{path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}