version 1.0

task Lotus2postlinksh {
  command <<<
    _lotus2_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/lotus2:2.01--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}