version 1.0

task Blasrpostlinksh {
  command <<<
    _blasr_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/blasr:5.3.5--0"
  }
  output {
    File out_stdout = stdout()
  }
}