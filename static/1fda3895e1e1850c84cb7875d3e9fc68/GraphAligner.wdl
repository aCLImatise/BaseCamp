version 1.0

task GraphAligner {
  command <<<
    GraphAligner
  >>>
  runtime {
    docker: "quay.io/biocontainers/graphaligner:1.0.13--he1c1bb9_0"
  }
  output {
    File out_stdout = stdout()
  }
}