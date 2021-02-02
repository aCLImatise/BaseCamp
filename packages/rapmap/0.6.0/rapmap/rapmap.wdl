version 1.0

task Rapmap {
  command <<<
    rapmap
  >>>
  output {
    File out_stdout = stdout()
  }
}