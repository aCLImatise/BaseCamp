version 1.0

task EslSsdrawMsafileOutput postscript file name {
  input {
    String? ssSsPostscriptTemplate
    String? outputOutputPostscriptFileName
  }
  command <<<
    esl-ssdraw msafile output postscript file name \
      ~{ssSsPostscriptTemplate} \
      ~{outputOutputPostscriptFileName}
  >>>
}