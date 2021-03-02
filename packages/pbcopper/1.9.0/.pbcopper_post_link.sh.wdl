version 1.0

task Pbcopperpostlinksh {
  command <<<
    _pbcopper_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbcopper:1.9.0--h3e4de3e_0"
  }
  output {
    File out_stdout = stdout()
  }
}