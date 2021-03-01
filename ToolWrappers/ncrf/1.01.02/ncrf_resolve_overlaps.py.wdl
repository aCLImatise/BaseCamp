version 1.0

task NcrfResolveOverlapspy {
  command <<<
    ncrf_resolve_overlaps_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}