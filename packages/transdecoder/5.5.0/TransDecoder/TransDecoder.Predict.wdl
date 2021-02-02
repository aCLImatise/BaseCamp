version 1.0

task TransDecoderPredict {
  command <<<
    TransDecoder_Predict
  >>>
  output {
    File out_stdout = stdout()
  }
}