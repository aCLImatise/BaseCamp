version 1.0

task CruxExtractColumnsTsv file {
  input {
    String? columnColumnNames
  }
  command <<<
    crux extract-columns tsv file \
      ~{columnColumnNames}
  >>>
}