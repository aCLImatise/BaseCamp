version 1.0

task ConvertMetaMapsToKrakenpl {
  command <<<
    convertMetaMapsToKraken_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}