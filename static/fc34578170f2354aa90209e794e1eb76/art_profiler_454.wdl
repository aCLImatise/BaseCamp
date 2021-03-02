version 1.0

task ArtProfiler454 {
  command <<<
    art_profiler_454
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}