version 1.0

task Emupostlinksh {
  command <<<
    _emu_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/emu:1.0.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}