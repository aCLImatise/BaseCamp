version 1.0

task StripGapColumnsOutput XMFA {
  input {
    String? inputInputXMfa
    String? outputOutputXMfa
  }
  command <<<
    stripGapColumns output XMFA \
      ~{inputInputXMfa} \
      ~{outputOutputXMfa}
  >>>
}