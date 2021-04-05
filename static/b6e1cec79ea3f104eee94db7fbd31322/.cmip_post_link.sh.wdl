version 1.0

task Cmippostlinksh {
  command <<<
    _cmip_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/cmip:2.6.2--hc99cbb1_0"
  }
  output {
    File out_stdout = stdout()
  }
}