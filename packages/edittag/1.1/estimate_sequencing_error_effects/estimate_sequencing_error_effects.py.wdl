version 1.0

task EstimateSequencingErrorEffectspy {
  command <<<
    estimate_sequencing_error_effects_py
  >>>
  output {
    File out_stdout = stdout()
  }
}