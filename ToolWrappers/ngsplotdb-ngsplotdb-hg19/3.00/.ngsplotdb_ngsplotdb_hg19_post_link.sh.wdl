version 1.0

task Ngsplotdbngsplotdbhg19postlinksh {
  command <<<
    _ngsplotdb_ngsplotdb_hg19_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}