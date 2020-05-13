version 1.0

task DrDiscoIsBlacklistedOPTIONSPOS1POS2 {
  input {
    String blacklistBlacklistJunctions
  }
  command <<<
    dr-disco is-blacklisted OPTIONS POS1 POS2 \
      ~{if defined(blacklistBlacklistJunctions) then ("--blacklist-junctions " +  '"' + blacklistBlacklistJunctions + '"') else ""}
  >>>
}