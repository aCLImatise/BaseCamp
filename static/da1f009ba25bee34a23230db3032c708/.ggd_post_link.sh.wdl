version 1.0

task Ggdpostlinksh {
  command <<<
    _ggd_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}