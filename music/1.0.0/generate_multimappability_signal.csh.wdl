version 1.0

task GenerateMultimappabilitySignalcsh {
  command <<<
    generate_multimappability_signal_csh
  >>>
  output {
    File out_stdout = stdout()
  }
}