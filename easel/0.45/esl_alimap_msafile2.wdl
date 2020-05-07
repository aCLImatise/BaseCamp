version 1.0

task EslAlimapMsafile2 {
  input {
    String? msafile1Msafile1
    String? msafile2Msafile2
  }
  command <<<
    esl-alimap msafile2 \
      ~{msafile1Msafile1} \
      ~{msafile2Msafile2}
  >>>
}