version 1.0

task DrDiscoIsBlacklistedPOS2 {
  input {
    String? optionsOptions
    String? pos1Pos1
    String? pos2Pos2
  }
  command <<<
    dr-disco is-blacklisted POS2 \
      ~{optionsOptions} \
      ~{pos1Pos1} \
      ~{pos2Pos2}
  >>>
}