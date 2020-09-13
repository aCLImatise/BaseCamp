version 1.0

task Rsemevalestimatetranscriptlengthdistribution {
  command <<<
    rsem_eval_estimate_transcript_length_distribution
  >>>
  output {
    File out_stdout = stdout()
  }
}