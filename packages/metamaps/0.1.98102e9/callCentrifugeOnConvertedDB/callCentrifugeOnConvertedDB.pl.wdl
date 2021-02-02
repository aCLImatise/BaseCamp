version 1.0

task CallCentrifugeOnConvertedDBpl {
  command <<<
    callCentrifugeOnConvertedDB_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}