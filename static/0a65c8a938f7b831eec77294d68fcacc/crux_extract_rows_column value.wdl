version 1.0

task CruxExtractRowsColumn value {
  input {
    String? tsvTsvFile
    String? columnColumnName
    String? columnColumnValue
  }
  command <<<
    crux extract-rows column value \
      ~{tsvTsvFile} \
      ~{columnColumnName} \
      ~{columnColumnValue}
  >>>
}