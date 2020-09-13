version 1.0

task Obminimize {
  command <<<
    obminimize
  >>>
  output {
    File out_stdout = stdout()
  }
}