version 1.0

task Padel {
  command <<<
    padel
  >>>
  output {
    File out_stdout = stdout()
  }
}