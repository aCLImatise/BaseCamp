version 1.0

task Checkmgenomepostlinksh {
  command <<<
    _checkm_genome_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}