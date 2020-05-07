version 1.0

task XmlToSqlOutDir {
  input {
    String? inInXml
    String? inInDtd
    String? inInStats
    String? outdirOutdir
  }
  command <<<
    xmlToSql outDir \
      ~{inInXml} \
      ~{inInDtd} \
      ~{inInStats} \
      ~{outdirOutdir}
  >>>
}