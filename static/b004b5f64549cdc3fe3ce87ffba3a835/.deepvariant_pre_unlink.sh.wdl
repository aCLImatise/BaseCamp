version 1.0

task Deepvariantpreunlinksh {
  command <<<
    _deepvariant_pre_unlink_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepvariant:1.1.0--py36hf3e76ba_0"
  }
  output {
    File out_stdout = stdout()
  }
}