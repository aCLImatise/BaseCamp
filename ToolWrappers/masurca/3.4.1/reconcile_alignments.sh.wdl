version 1.0

task ReconcileAlignmentssh {
  command <<<
    reconcile_alignments_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}