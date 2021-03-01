version 1.0

task Bam2fastxpostlinksh {
  command <<<
    _bam2fastx_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/bam2fastx:1.3.1--he1c1bb9_0"
  }
  output {
    File out_stdout = stdout()
  }
}