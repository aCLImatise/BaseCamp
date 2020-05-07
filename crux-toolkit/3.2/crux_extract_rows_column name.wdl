version 1.0

task CruxExtractRowsColumn name {
  input {
    String? tsvTsvFile
    String? columnColumnName
    String? columnColumnValue
  }
  command <<<
    crux extract-rows column name \
      ~{tsvTsvFile} \
      ~{columnColumnName} \
      ~{columnColumnValue}
  >>>
}