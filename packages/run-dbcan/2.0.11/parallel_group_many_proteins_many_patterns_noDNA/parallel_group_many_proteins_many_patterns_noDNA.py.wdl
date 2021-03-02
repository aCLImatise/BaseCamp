version 1.0

task ParallelGroupManyProteinsManyPatternsNoDNApy {
  command <<<
    parallel_group_many_proteins_many_patterns_noDNA_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}