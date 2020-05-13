version 1.0

task CruxSortByColumnColumn name {
  input {
    String? tsvTsvFile
    String? columnColumnName
  }
  command <<<
    crux sort-by-column column name \
      ~{tsvTsvFile} \
      ~{columnColumnName}
  >>>
}