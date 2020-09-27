version 1.0

task ConvertMetaMapsToCentrifugepl {
  command <<<
    convertMetaMapsToCentrifuge_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}