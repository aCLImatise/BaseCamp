version 1.0

task DrDiscoIsBlacklistedPOS1 {
  input {
    String? optionsOptions
    String? pos1Pos1
    String? pos2Pos2
  }
  command <<<
    dr-disco is-blacklisted POS1 \
      ~{optionsOptions} \
      ~{pos1Pos1} \
      ~{pos2Pos2}
  >>>
}