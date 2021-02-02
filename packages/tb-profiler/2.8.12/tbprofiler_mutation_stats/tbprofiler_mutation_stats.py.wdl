version 1.0

task TbprofilerMutationStatspy {
  command <<<
    tbprofiler_mutation_stats_py
  >>>
  output {
    File out_stdout = stdout()
  }
}