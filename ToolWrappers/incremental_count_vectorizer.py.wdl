version 1.0

task IncrementalCountVectorizerpy {
  command <<<
    incremental_count_vectorizer_py
  >>>
  output {
    File out_stdout = stdout()
  }
}