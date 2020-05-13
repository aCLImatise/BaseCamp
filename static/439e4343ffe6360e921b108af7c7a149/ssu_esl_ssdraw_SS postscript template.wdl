version 1.0

task SsuEslSsdrawSS postscript template {
  input {
    String? msaMsaFile
    String? ssSsPostscriptTemplate
    String? outputOutputPostscriptFileName
  }
  command <<<
    ssu-esl-ssdraw SS postscript template \
      ~{msaMsaFile} \
      ~{ssSsPostscriptTemplate} \
      ~{outputOutputPostscriptFileName}
  >>>
}