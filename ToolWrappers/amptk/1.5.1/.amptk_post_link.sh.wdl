version 1.0

task Amptkpostlinksh {
  command <<<
    _amptk_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.1--py_1"
  }
  output {
    File out_stdout = stdout()
  }
}