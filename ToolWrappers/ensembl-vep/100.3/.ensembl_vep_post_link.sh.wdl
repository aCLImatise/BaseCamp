version 1.0

task Ensemblveppostlinksh {
  command <<<
    _ensembl_vep_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}