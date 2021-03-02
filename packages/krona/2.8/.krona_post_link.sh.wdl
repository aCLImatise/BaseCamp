version 1.0

task Kronapostlinksh {
  command <<<
    _krona_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}