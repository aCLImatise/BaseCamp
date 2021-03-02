version 1.0

task TbprofilerMutationStatspy {
  command <<<
    tbprofiler_mutation_stats_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}