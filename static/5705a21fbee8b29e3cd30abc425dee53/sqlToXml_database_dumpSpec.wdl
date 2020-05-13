version 1.0

task SqlToXmlDatabaseDumpSpec.od {
  input {
    String? outputOutputXml
  }
  command <<<
    sqlToXml database dumpSpec.od \
      ~{outputOutputXml}
  >>>
}