version 1.0

task CruxStatColumnTsv file {
  input {
    String? columnColumnName
  }
  command <<<
    crux stat-column tsv file \
      ~{columnColumnName}
  >>>
}