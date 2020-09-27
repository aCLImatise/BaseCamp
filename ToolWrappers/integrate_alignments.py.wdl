version 1.0

task IntegrateAlignmentspy {
  command <<<
    integrate_alignments_py
  >>>
  output {
    File out_stdout = stdout()
  }
}