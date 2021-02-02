version 1.0

task Jps {
  command <<<
    jps
  >>>
  output {
    File out_stdout = stdout()
  }
}