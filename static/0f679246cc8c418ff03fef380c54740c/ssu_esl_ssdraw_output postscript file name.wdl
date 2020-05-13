version 1.0

task SsuEslSsdrawOutput postscript file name {
  input {
    String? msaMsaFile
    String? ssSsPostscriptTemplate
    String? outputOutputPostscriptFileName
  }
  command <<<
    ssu-esl-ssdraw output postscript file name \
      ~{msaMsaFile} \
      ~{ssSsPostscriptTemplate} \
      ~{outputOutputPostscriptFileName}
  >>>
}