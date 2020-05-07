version 1.0

task SqlToXmlDumpSpec.od {
  input {
    String? databaseDatabase
    String? dumpDumpSpecoD
    String? outputOutputXml
  }
  command <<<
    sqlToXml dumpSpec.od \
      ~{databaseDatabase} \
      ~{dumpDumpSpecoD} \
      ~{outputOutputXml}
  >>>
}