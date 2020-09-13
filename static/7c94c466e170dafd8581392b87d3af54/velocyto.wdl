version 1.0

task Velocyto {
  command <<<
    velocyto
  >>>
  output {
    File out_stdout = stdout()
  }
}