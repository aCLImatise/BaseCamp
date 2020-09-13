version 1.0

task CruxSpectralcounts01 {
  input {
    String crux
    String spectral_counts
  }
  command <<<
    crux spectral_counts __01_ \
      ~{crux} \
      ~{spectral_counts}
  >>>
  parameter_meta {
    crux: ""
    spectral_counts: ""
  }
  output {
    File out_stdout = stdout()
  }
}