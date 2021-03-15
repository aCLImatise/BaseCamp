version 1.0

task ClassifyReads {
  command <<<
    classify_reads
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaclassifier:v1.0.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}