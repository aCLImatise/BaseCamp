version 1.0

task GetAlignmentWindowsBase output filename {
  input {
    String? xXMfaAlignment
    String? windowWindowLength
    String? windowWindowShiftAmount
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows base output filename \
      ~{xXMfaAlignment} \
      ~{windowWindowLength} \
      ~{windowWindowShiftAmount} \
      ~{baseBaseOutputFileName}
  >>>
}