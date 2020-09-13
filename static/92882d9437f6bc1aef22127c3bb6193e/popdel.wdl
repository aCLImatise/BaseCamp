version 1.0

task Popdel {
  command <<<
    popdel
  >>>
  output {
    File out_stdout = stdout()
  }
}