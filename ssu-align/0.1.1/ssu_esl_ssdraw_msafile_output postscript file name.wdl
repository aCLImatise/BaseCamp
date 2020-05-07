version 1.0

task SsuEslSsdrawMsafileOutput postscript file name {
  input {
    String? ssSsPostscriptTemplate
    String? outputOutputPostscriptFileName
  }
  command <<<
    ssu-esl-ssdraw msafile output postscript file name \
      ~{ssSsPostscriptTemplate} \
      ~{outputOutputPostscriptFileName}
  >>>
}