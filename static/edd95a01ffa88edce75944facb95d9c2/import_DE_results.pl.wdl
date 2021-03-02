version 1.0

task ImportDEResultspl {
  command <<<
    import_DE_results_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}