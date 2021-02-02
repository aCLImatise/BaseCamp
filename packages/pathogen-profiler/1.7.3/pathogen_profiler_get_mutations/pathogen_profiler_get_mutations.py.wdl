version 1.0

task Pathogenprofilergetmutationspy {
  command <<<
    pathogen_profiler_get_mutations_py
  >>>
  output {
    File out_stdout = stdout()
  }
}