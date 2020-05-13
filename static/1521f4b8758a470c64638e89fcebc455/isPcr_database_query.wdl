version 1.0

task IsPcrDatabaseQuery {
  input {
    String? outputOutput
  }
  command <<<
    isPcr database query \
      ~{outputOutput}
  >>>
}