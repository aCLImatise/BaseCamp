version 1.0

task SpectralHk {
  command <<<
    spectral_hk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}