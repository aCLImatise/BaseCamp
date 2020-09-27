version 1.0

task ShortenContigIDspl {
  command <<<
    shortenContigIDs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}