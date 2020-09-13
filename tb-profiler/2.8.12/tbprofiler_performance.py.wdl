version 1.0

task TbprofilerPerformancepy {
  command <<<
    tbprofiler_performance_py
  >>>
  output {
    File out_stdout = stdout()
  }
}