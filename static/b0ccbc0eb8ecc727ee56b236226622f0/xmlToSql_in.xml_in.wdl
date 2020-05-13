version 1.0

task XmlToSqlIn.xmlIn.stats {
  input {
    String? inInDtd
    String? inInStats
    String? outdirOutdir
  }
  command <<<
    xmlToSql in.xml in.stats \
      ~{inInDtd} \
      ~{inInStats} \
      ~{outdirOutdir}
  >>>
}