version 1.0

task Fastaselectplorig {
  command <<<
    fastaselect_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}