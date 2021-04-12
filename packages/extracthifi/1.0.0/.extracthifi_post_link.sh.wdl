version 1.0

task Extracthifipostlinksh {
  command <<<
    _extracthifi_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/extracthifi:1.0.0--0"
  }
  output {
    File out_stdout = stdout()
  }
}