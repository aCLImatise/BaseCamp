version 1.0

task XmlToSqlIn.stats {
  input {
    String? inInXml
    String? inInDtd
    String? inInStats
    String? outdirOutdir
  }
  command <<<
    xmlToSql in.stats \
      ~{inInXml} \
      ~{inInDtd} \
      ~{inInStats} \
      ~{outdirOutdir}
  >>>
}