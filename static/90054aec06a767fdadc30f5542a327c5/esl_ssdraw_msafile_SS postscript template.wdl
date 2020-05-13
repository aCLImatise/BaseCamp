version 1.0

task EslSsdrawMsafileSS postscript template {
  input {
    String? outputOutputPostscriptFileName
  }
  command <<<
    esl-ssdraw msafile SS postscript template \
      ~{outputOutputPostscriptFileName}
  >>>
}