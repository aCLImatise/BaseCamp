version 1.0

task GetAlignmentWindowsXMFA alignmentWindow shift amount {
  input {
    String? windowWindowLength
    String? windowWindowShiftAmount
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows XMFA alignment window shift amount \
      ~{windowWindowLength} \
      ~{windowWindowShiftAmount} \
      ~{baseBaseOutputFileName}
  >>>
}