version 1.0

task MerfishtoolsEsterrorrates {
  command <<<
    merfishtools est_error_rates
  >>>
  output {
    File out_stdout = stdout()
  }
}