version 1.0

task Brassassemble {
  command <<<
    brass_assemble
  >>>
  output {
    File out_stdout = stdout()
  }
}