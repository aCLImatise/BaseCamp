version 1.0

task Gnalipostlinksh {
  command <<<
    _gnali_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnali:1.0.2--py37heccd8a3_0"
  }
  output {
    File out_stdout = stdout()
  }
}