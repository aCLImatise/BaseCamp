version 1.0

task Vsubseqselect {
  command <<<
    vsubseqselect
  >>>
  output {
    File out_stdout = stdout()
  }
}