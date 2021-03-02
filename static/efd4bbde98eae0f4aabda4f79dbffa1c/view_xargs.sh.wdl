version 1.0

task ViewXargssh {
  command <<<
    view_xargs_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}