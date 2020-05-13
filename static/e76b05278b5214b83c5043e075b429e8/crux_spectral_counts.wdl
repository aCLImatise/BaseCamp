version 1.0

task CruxSpectralCounts {
  input {
    String? inputInputPsms
  }
  command <<<
    crux spectral-counts \
      ~{inputInputPsms}
  >>>
}