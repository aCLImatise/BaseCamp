version 1.0

task Ngsplotdbngsplotdbhg19preunlinksh {
  command <<<
    _ngsplotdb_ngsplotdb_hg19_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}