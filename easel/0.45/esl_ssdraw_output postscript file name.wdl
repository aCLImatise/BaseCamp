version 1.0

task EslSsdrawOutput postscript file name {
  input {
    String? msaMsaFile
    String? ssSsPostscriptTemplate
    String? outputOutputPostscriptFileName
  }
  command <<<
    esl-ssdraw output postscript file name \
      ~{msaMsaFile} \
      ~{ssSsPostscriptTemplate} \
      ~{outputOutputPostscriptFileName}
  >>>
}