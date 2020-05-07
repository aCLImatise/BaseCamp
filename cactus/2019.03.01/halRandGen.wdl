version 1.0

task HalRandGen {
  input {
    String? halHalStats
    File? pathPathOfOuputHalAlignmentFile
  }
  command <<<
    halRandGen \
      ~{halHalStats} \
      ~{pathPathOfOuputHalAlignmentFile}
  >>>
}