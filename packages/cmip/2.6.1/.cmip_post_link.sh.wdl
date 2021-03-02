version 1.0

task Cmippostlinksh {
  command <<<
    _cmip_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/cmip:2.6.1--hc99cbb1_4"
  }
  output {
    File out_stdout = stdout()
  }
}