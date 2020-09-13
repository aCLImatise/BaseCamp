version 1.0

task Codonsxyplotpl {
  command <<<
    codons_xyplot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}