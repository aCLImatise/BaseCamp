version 1.0

task Funannotatepostlinksh {
  command <<<
    _funannotate_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0"
  }
  output {
    File out_stdout = stdout()
  }
}