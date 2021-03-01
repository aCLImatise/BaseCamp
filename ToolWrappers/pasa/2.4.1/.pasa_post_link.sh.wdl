version 1.0

task Pasapostlinksh {
  command <<<
    _pasa_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}