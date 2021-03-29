version 1.0

task IntegrateAlignmentspy {
  command <<<
    integrate_alignments_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}