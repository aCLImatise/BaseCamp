version 1.0

task CruxSortByColumnTsv file {
  input {
    String? columnColumnName
  }
  command <<<
    crux sort-by-column tsv file \
      ~{columnColumnName}
  >>>
}