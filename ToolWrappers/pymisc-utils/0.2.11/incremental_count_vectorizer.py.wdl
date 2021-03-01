version 1.0

task IncrementalCountVectorizerpy {
  command <<<
    incremental_count_vectorizer_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}