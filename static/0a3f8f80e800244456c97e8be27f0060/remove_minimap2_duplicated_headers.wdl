version 1.0

task RemoveMinimap2DuplicatedHeaders {
  command <<<
    remove_minimap2_duplicated_headers
  >>>
  runtime {
    docker: "quay.io/biocontainers/rosella:0.2.4--h443a992_0"
  }
  output {
    File out_stdout = stdout()
  }
}