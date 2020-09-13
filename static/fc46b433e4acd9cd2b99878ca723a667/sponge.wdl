version 1.0

task Sponge {
  command <<<
    sponge
  >>>
  output {
    File out_stdout = stdout()
  }
}