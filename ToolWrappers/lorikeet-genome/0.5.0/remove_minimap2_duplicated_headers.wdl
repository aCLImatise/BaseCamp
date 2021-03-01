version 1.0

task RemoveMinimap2DuplicatedHeaders {
  command <<<
    remove_minimap2_duplicated_headers
  >>>
  runtime {
    docker: "quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0"
  }
  output {
    File out_stdout = stdout()
  }
}