version 1.0

task EslSsdrawSS postscript template {
  input {
    String? msaMsaFile
    String? ssSsPostscriptTemplate
    String? outputOutputPostscriptFileName
  }
  command <<<
    esl-ssdraw SS postscript template \
      ~{msaMsaFile} \
      ~{ssSsPostscriptTemplate} \
      ~{outputOutputPostscriptFileName}
  >>>
}