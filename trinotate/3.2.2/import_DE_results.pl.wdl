version 1.0

task ImportDEResultspl {
  command <<<
    import_DE_results_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}