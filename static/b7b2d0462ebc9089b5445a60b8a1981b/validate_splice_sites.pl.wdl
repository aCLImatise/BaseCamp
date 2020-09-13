version 1.0

task ValidateSpliceSitespl {
  command <<<
    validate_splice_sites_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}