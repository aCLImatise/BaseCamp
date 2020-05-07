version 1.0

task IsPcrOutput {
  input {
    String? databaseDatabase
    String? queryQuery
    String? outputOutput
  }
  command <<<
    isPcr output \
      ~{databaseDatabase} \
      ~{queryQuery} \
      ~{outputOutput}
  >>>
}