version 1.0

task TbprofilerGeneProfilerpy {
  command <<<
    tbprofiler_gene_profiler_py
  >>>
  output {
    File out_stdout = stdout()
  }
}