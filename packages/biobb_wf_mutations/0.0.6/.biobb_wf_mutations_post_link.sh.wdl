version 1.0

task BiobbWfMutationspostlinksh {
  command <<<
    _biobb_wf_mutations_post_link_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}