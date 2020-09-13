version 1.0

task HLAProfilerpl {
  command <<<
    HLAProfiler_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}