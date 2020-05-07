version 1.0

task GetAlignmentWindowsXMFA alignmentWindow lengthBase output filename {
  input {
    String? windowWindowShiftAmount
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows XMFA alignment window length base output filename \
      ~{windowWindowShiftAmount} \
      ~{baseBaseOutputFileName}
  >>>
}