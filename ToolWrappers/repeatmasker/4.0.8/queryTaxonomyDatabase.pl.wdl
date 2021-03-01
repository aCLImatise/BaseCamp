version 1.0

task QueryTaxonomyDatabasepl {
  command <<<
    queryTaxonomyDatabase_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}