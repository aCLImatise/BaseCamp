version 1.0

task GetAlignmentWindowsWindow shift amount {
  input {
    String? xXMfaAlignment
    String? windowWindowLength
    String? windowWindowShiftAmount
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows window shift amount \
      ~{xXMfaAlignment} \
      ~{windowWindowLength} \
      ~{windowWindowShiftAmount} \
      ~{baseBaseOutputFileName}
  >>>
}