version 1.0

task NcrfResolveOverlaps {
  command <<<
    ncrf_resolve_overlaps
  >>>
  output {
    File out_stdout = stdout()
  }
}