version 1.0

task LightAssembler {
  command <<<
    LightAssembler
  >>>
  output {
    File out_stdout = stdout()
  }
}