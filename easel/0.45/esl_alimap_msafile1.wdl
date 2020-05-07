version 1.0

task EslAlimapMsafile1 {
  input {
    String? msafile2Msafile2
  }
  command <<<
    esl-alimap msafile1 \
      ~{msafile2Msafile2}
  >>>
}