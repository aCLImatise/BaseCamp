version 1.0

task TransDecoderPredict {
  command <<<
    TransDecoder_Predict
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}