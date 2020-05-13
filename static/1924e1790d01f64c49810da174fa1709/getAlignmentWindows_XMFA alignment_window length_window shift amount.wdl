version 1.0

task GetAlignmentWindowsXMFA alignmentWindow lengthWindow shift amount {
  input {
    String? baseBaseOutputFileName
  }
  command <<<
    getAlignmentWindows XMFA alignment window length window shift amount \
      ~{baseBaseOutputFileName}
  >>>
}