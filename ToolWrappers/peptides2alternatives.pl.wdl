version 1.0

task Peptides2alternativespl {
  command <<<
    peptides2alternatives_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}