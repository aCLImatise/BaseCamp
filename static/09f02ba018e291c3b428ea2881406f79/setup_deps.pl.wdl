version 1.0

task Setupdepspl {
  command <<<
    setup_deps_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}