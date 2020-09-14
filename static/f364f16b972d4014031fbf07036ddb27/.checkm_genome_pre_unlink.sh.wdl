version 1.0

task Checkmgenomepreunlinksh {
  command <<<
    _checkm_genome_pre_unlink_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}