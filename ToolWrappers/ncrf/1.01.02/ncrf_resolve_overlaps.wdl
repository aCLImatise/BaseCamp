version 1.0

task NcrfResolveOverlaps {
  command <<<
    ncrf_resolve_overlaps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}