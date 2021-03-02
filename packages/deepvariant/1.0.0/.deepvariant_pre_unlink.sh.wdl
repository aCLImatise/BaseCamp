version 1.0

task Deepvariantpreunlinksh {
  command <<<
    _deepvariant_pre_unlink_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.0.0--py36hf5a246b_0"
  }
  output {
    File out_stdout = stdout()
  }
}