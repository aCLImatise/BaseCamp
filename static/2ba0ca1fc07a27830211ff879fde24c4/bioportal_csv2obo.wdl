version 1.0

task BioportalCsv2obo.pl {
  input {
    Boolean fF
  }
  command <<<
    bioportal_csv2obo.pl \
      ~{true="-f" false="" fF}
  >>>
}