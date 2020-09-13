version 1.0

task Vseqselect {
  command <<<
    vseqselect
  >>>
  output {
    File out_stdout = stdout()
  }
}