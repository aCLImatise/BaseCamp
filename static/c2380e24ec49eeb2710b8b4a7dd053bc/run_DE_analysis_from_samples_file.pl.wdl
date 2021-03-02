version 1.0

task RunDEAnalysisFromSamplesFilepl {
  command <<<
    run_DE_analysis_from_samples_file_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}