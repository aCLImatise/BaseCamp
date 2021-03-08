version 1.0

task Dfastpreunlinksh {
  command <<<
    _dfast_pre_unlink_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/dfast:1.2.13--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}