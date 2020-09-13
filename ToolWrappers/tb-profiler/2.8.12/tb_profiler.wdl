version 1.0

task Tbprofiler {
  command <<<
    tb_profiler
  >>>
  output {
    File out_stdout = stdout()
  }
}