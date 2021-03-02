version 1.0

task Tcoffeepostlinksh {
  command <<<
    _t_coffee_post_link_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}