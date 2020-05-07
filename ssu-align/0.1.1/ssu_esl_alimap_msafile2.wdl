version 1.0

task SsuEslAlimapMsafile2 {
  input {
    String? msafile1Msafile1
    String? msafile2Msafile2
  }
  command <<<
    ssu-esl-alimap msafile2 \
      ~{msafile1Msafile1} \
      ~{msafile2Msafile2}
  >>>
}