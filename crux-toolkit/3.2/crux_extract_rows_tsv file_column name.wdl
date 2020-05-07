version 1.0

task CruxExtractRowsTsv fileColumn name {
  input {
    String? columnColumnValue
  }
  command <<<
    crux extract-rows tsv file column name \
      ~{columnColumnValue}
  >>>
}