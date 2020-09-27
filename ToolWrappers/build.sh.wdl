version 1.0

task Buildsh {
  command <<<
    build_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}