version 1.0

task LumpyFilter {
  command <<<
    lumpy_filter
  >>>
  runtime {
    docker: "quay.io/biocontainers/lumpy-sv-minimal:0.3.1--h5ef6573_0"
  }
  output {
    File out_stdout = stdout()
  }
}