version 1.0

task GetAlignmentWindowsXMFA alignmentBase output filename {
  input {
    String? windowWindowLength
    String? windowWindowShiftAmount
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows XMFA alignment base output filename \
      ~{windowWindowLength} \
      ~{windowWindowShiftAmount} \
      ~{baseBaseOutputFileName}
  >>>
}