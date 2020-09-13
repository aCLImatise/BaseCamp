version 1.0

task CallKrakenOnConvertedDBpl {
  command <<<
    callKrakenOnConvertedDB_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}