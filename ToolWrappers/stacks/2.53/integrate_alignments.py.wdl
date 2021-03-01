version 1.0

task IntegrateAlignmentspy {
  command <<<
    integrate_alignments_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}