version 1.0

task CallKraken2OnConvertedDBpl {
  command <<<
    callKraken2OnConvertedDB_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}