version 1.0

task EstimateSequencingErrorEffectspy {
  command <<<
    estimate_sequencing_error_effects_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}