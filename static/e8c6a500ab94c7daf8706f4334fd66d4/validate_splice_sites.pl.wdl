version 1.0

task ValidateSpliceSitespl {
  command <<<
    validate_splice_sites_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}