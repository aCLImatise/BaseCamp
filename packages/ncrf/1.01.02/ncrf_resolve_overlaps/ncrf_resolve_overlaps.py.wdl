version 1.0

task NcrfResolveOverlapspy {
  command <<<
    ncrf_resolve_overlaps_py
  >>>
  output {
    File out_stdout = stdout()
  }
}