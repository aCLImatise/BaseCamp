version 1.0

task SsuEslSsdrawMsafileSS postscript template {
  input {
    String? outputOutputPostscriptFileName
  }
  command <<<
    ssu-esl-ssdraw msafile SS postscript template \
      ~{outputOutputPostscriptFileName}
  >>>
}