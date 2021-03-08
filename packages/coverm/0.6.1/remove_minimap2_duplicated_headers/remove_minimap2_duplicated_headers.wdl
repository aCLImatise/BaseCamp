version 1.0

task RemoveMinimap2DuplicatedHeaders {
  command <<<
    remove_minimap2_duplicated_headers
  >>>
  runtime {
    docker: "quay.io/biocontainers/coverm:0.6.1--hc216eb9_0"
  }
  output {
    File out_stdout = stdout()
  }
}