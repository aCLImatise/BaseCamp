version 1.0

task CruxStatColumnColumn name {
  input {
    String? tsvTsvFile
    String? columnColumnName
  }
  command <<<
    crux stat-column column name \
      ~{tsvTsvFile} \
      ~{columnColumnName}
  >>>
}