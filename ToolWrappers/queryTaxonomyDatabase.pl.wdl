version 1.0

task QueryTaxonomyDatabasepl {
  command <<<
    queryTaxonomyDatabase_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}