version 1.0

task ShortenContigIDspl {
  command <<<
    shortenContigIDs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}