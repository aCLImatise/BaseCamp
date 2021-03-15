version 1.0

task Godmdpostlinksh {
  command <<<
    _godmd_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/godmd:1.0.0--hfad81c2_0"
  }
  output {
    File out_stdout = stdout()
  }
}