version 1.0

task SparseExtract {
  input {
    String? inInIt
    String? indexIndex
    String? queryQuery
    String? updateUpdate
    String? mapMapDb
    String? predictPredict
    String? mashMash
    String? extractExtract
    String? reportReport
  }
  command <<<
    sparse extract \
      ~{inInIt} \
      ~{indexIndex} \
      ~{queryQuery} \
      ~{updateUpdate} \
      ~{mapMapDb} \
      ~{predictPredict} \
      ~{mashMash} \
      ~{extractExtract} \
      ~{reportReport}
  >>>
}