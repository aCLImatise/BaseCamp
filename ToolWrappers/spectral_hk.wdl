version 1.0

task SpectralHk {
  command <<<
    spectral_hk
  >>>
  output {
    File out_stdout = stdout()
  }
}