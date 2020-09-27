version 1.0

task CallKraken2OnConvertedDBpl {
  command <<<
    callKraken2OnConvertedDB_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}