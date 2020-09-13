version 1.0

task ConvertMetaMapsToKrakenpl {
  command <<<
    convertMetaMapsToKraken_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}