version 1.0

task Tcoffeepostlinksh {
  command <<<
    _t_coffee_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/t-coffee:13.45.0.4846264--he1b5a44_3"
  }
  output {
    File out_stdout = stdout()
  }
}