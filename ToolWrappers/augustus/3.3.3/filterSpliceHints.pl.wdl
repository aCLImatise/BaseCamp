version 1.0

task FilterSpliceHintspl {
  command <<<
    filterSpliceHints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}