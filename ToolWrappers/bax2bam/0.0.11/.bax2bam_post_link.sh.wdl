version 1.0

task Bax2bampostlinksh {
  command <<<
    _bax2bam_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/bax2bam:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}