version 1.0

task CruxExtractRowsTsv fileColumn value {
  input {
    String? columnColumnName
    String? columnColumnValue
  }
  command <<<
    crux extract-rows tsv file column value \
      ~{columnColumnName} \
      ~{columnColumnValue}
  >>>
}