version 1.0

task Setupdepspl {
  command <<<
    setup_deps_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}