version 1.0

task ReconcileMatchespl {
  command <<<
    reconcile_matches_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}