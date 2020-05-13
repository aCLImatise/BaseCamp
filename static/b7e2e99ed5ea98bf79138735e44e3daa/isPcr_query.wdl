version 1.0

task IsPcrQuery {
  input {
    String? databaseDatabase
    String? queryQuery
    String? outputOutput
  }
  command <<<
    isPcr query \
      ~{databaseDatabase} \
      ~{queryQuery} \
      ~{outputOutput}
  >>>
}