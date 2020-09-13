version 1.0

task Haarzx {
  command <<<
    haarz_x
  >>>
  output {
    File out_stdout = stdout()
  }
}