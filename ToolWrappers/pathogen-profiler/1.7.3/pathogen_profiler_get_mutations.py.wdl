version 1.0

task Pathogenprofilergetmutationspy {
  command <<<
    pathogen_profiler_get_mutations_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}