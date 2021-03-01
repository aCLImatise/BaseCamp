version 1.0

task Opencravatpostlinksh {
  command <<<
    _open_cravat_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}