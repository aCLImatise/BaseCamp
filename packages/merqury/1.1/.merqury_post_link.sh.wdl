version 1.0

task Merqurypostlinksh {
  command <<<
    _merqury_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/merqury:1.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}