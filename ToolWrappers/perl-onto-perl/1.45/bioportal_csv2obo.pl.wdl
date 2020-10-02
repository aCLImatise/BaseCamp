version 1.0

task BioportalCsv2obopl {
  input {
    Boolean? csv_input_file
    String usage
  }
  command <<<
    bioportal_csv2obo_pl \
      ~{usage} \
      ~{if (csv_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    csv_input_file: "CSV input file"
    usage: ": bioportal_csv2obo.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}