version 1.0

task TbprofilerLibrarySummarypy {
  command <<<
    tbprofiler_library_summary_py
  >>>
  output {
    File out_stdout = stdout()
  }
}