version 1.0

task Obprobe {
  command <<<
    obprobe
  >>>
  output {
    File out_stdout = stdout()
  }
}