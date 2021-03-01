version 1.0

task CallKrakenOnConvertedDBpl {
  command <<<
    callKrakenOnConvertedDB_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}