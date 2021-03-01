version 1.0

task RunEventsAnalysispy {
  command <<<
    run_events_analysis_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}