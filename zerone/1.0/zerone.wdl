version 1.0

task Zerone {
  input {
    Boolean windowWindow
    Boolean qualityQuality
    Boolean listListOutput
    Boolean confidenceConfidence
  }
  command <<<
    zerone \
      ~{true="--window" false="" windowWindow} \
      ~{true="--quality" false="" qualityQuality} \
      ~{true="--list-output" false="" listListOutput} \
      ~{true="--confidence" false="" confidenceConfidence}
  >>>
}