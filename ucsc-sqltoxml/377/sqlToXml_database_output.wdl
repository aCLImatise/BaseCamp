version 1.0

task SqlToXmlDatabaseOutput.xml {
  input {
    String? dumpDumpSpecoD
    String? outputOutputXml
  }
  command <<<
    sqlToXml database output.xml \
      ~{dumpDumpSpecoD} \
      ~{outputOutputXml}
  >>>
}