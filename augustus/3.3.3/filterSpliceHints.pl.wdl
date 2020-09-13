version 1.0

task FilterSpliceHintspl {
  command <<<
    filterSpliceHints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}