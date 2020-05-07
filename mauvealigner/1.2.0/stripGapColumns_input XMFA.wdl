version 1.0

task StripGapColumnsInput XMFA {
  input {
    String? outputOutputXMfa
  }
  command <<<
    stripGapColumns input XMFA \
      ~{outputOutputXMfa}
  >>>
}