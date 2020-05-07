version 1.0

task SqlToXmlOutput.xml {
  input {
    String? databaseDatabase
    String? dumpDumpSpecoD
    String? outputOutputXml
  }
  command <<<
    sqlToXml output.xml \
      ~{databaseDatabase} \
      ~{dumpDumpSpecoD} \
      ~{outputOutputXml}
  >>>
}