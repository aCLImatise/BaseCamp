version 1.0

task CruxExtractColumnsColumn names {
  input {
    String? tsvTsvFile
    String? columnColumnNames
  }
  command <<<
    crux extract-columns column names \
      ~{tsvTsvFile} \
      ~{columnColumnNames}
  >>>
}