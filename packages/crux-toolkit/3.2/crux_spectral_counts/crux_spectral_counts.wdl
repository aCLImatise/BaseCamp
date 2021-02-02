version 1.0

task CruxSpectralcounts {
  command <<<
    crux spectral_counts
  >>>
  output {
    File out_stdout = stdout()
  }
}