version 1.0

task RunEventsAnalysispy {
  command <<<
    run_events_analysis_py
  >>>
  output {
    File out_stdout = stdout()
  }
}