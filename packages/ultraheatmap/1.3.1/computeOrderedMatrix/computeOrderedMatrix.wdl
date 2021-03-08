version 1.0

task ComputeOrderedMatrix {
  command <<<
    computeOrderedMatrix
  >>>
  runtime {
    docker: "quay.io/biocontainers/ultraheatmap:1.3.1--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}