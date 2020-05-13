version 1.0

task DrDiscoIsBlacklistedOPTIONSPOS2 {
  input {
    String? pos1Pos1
    String? pos2Pos2
  }
  command <<<
    dr-disco is-blacklisted OPTIONS POS2 \
      ~{pos1Pos1} \
      ~{pos2Pos2}
  >>>
}