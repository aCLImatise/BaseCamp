version 1.0

task RunDEAnalysisFromSamplesFilepl {
  command <<<
    run_DE_analysis_from_samples_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}