version 1.0

task Strudel {
  command <<<
    strudel
  >>>
  output {
    File out_stdout = stdout()
  }
}