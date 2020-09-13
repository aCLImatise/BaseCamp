version 1.0

task ReconcileAlignmentssh {
  command <<<
    reconcile_alignments_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}