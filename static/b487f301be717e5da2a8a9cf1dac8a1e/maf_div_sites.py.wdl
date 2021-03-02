version 1.0

task MafDivSitespy {
  command <<<
    maf_div_sites_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}