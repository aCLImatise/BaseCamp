version 1.0

task Funannotatepostlinksh {
  command <<<
    _funannotate_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}