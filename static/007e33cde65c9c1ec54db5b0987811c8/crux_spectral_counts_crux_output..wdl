version 1.0

task CruxSpectralcountsCruxoutput {
  input {
    String crux
    String spectral_counts
  }
  command <<<
    crux spectral_counts crux_output_ \
      ~{crux} \
      ~{spectral_counts}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    spectral_counts: ""
  }
  output {
    File out_stdout = stdout()
  }
}