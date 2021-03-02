version 1.0

task CallCentrifugeOnConvertedDBpl {
  command <<<
    callCentrifugeOnConvertedDB_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}