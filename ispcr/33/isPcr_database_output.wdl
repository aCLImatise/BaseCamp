version 1.0

task IsPcrDatabaseOutput {
  input {
    String? queryQuery
    String? outputOutput
  }
  command <<<
    isPcr database output \
      ~{queryQuery} \
      ~{outputOutput}
  >>>
}