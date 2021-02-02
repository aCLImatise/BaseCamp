version 1.0

task Fusionsam2juncFilteranchorNewfmt {
  command <<<
    fusionsam2junc_filteranchor_newfmt
  >>>
  output {
    File out_stdout = stdout()
  }
}