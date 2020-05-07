version 1.0

task GetAlignmentWindowsWindow length {
  input {
    String? xXMfaAlignment
    String? windowWindowLength
    String? windowWindowShiftAmount
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows window length \
      ~{xXMfaAlignment} \
      ~{windowWindowLength} \
      ~{windowWindowShiftAmount} \
      ~{baseBaseOutputFileName}
  >>>
}