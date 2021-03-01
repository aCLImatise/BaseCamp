version 1.0

task BiobbWfMutationspostlinksh {
  command <<<
    _biobb_wf_mutations_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}