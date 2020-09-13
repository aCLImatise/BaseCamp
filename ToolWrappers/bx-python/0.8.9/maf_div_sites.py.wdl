version 1.0

task MafDivSitespy {
  command <<<
    maf_div_sites_py
  >>>
  output {
    File out_stdout = stdout()
  }
}