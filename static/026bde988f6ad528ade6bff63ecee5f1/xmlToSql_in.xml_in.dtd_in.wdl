version 1.0

task XmlToSqlIn.xmlIn.dtdIn.stats {
  input {
    String? outdirOutdir
  }
  command <<<
    xmlToSql in.xml in.dtd in.stats \
      ~{outdirOutdir}
  >>>
}