version 1.0

task CruxSpectralCounts {
  input {
    String input_psms
  }
  command <<<
    crux spectral-counts \
      ~{input_psms}
  >>>
  parameter_meta {
    input_psms: ""
  }
}