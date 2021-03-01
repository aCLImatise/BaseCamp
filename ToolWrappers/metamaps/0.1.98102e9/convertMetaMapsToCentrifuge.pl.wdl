version 1.0

task ConvertMetaMapsToCentrifugepl {
  command <<<
    convertMetaMapsToCentrifuge_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}