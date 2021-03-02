version 1.0

task ArtProfilerIllumina {
  command <<<
    art_profiler_illumina
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}