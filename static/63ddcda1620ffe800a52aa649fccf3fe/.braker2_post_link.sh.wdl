version 1.0

task Braker2postlinksh {
  command <<<
    _braker2_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/braker2:2.1.6--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}