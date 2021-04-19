version 1.0

task Deepvariantpostlinksh {
  command <<<
    _deepvariant_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.0.0--py36hf5a246b_0"
  }
  output {
    File out_stdout = stdout()
  }
}