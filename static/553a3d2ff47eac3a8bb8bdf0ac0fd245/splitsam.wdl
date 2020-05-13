version 1.0

task Splitsam.sh {
  input {
    String? splitsSplitsAm
    String? inputInput
    String? plusPlusOutput
    Int? minusMinusOutput
    String? unmappedUnmappedOutput
  }
  command <<<
    splitsam.sh \
      ~{splitsSplitsAm} \
      ~{inputInput} \
      ~{plusPlusOutput} \
      ~{minusMinusOutput} \
      ~{unmappedUnmappedOutput}
  >>>
}