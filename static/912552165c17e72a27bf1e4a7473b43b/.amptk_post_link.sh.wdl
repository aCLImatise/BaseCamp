version 1.0

task Amptkpostlinksh {
  command <<<
    _amptk_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/amptk:1.5.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}