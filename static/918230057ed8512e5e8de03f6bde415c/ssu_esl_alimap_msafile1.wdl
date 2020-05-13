version 1.0

task SsuEslAlimapMsafile1 {
  input {
    String? msafile2Msafile2
  }
  command <<<
    ssu-esl-alimap msafile1 \
      ~{msafile2Msafile2}
  >>>
}