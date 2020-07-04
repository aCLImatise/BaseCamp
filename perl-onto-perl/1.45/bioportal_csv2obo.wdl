version 1.0

task BioportalCsv2obo.pl {
  input {
    Boolean? csv_input_file
  }
  command <<<
    bioportal_csv2obo.pl \
      ~{true="-f" false="" csv_input_file}
  >>>
  parameter_meta {
    csv_input_file: "CSV input file"
  }
}