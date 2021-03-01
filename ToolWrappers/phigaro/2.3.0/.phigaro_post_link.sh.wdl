version 1.0

task Phigaropostlinksh {
  command <<<
    _phigaro_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1"
  }
  output {
    File out_stdout = stdout()
  }
}