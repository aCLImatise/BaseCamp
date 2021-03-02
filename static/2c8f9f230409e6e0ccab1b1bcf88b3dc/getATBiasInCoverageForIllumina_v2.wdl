version 1.0

task GetATBiasInCoverageForIlluminaV2 {
  command <<<
    getATBiasInCoverageForIllumina_v2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}