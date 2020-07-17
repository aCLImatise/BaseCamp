version 1.0

task DrDiscoIsBlacklisted {
  input {
    String? blacklist_junctions
    String pos_one
    String? pos_two
  }
  command <<<
    dr-disco is-blacklisted \
      ~{pos_one} \
      ~{pos_two} \
      ~{if defined(blacklist_junctions) then ("--blacklist-junctions " +  '"' + blacklist_junctions + '"') else ""}
  >>>
  parameter_meta {
    blacklist_junctions: "Blacklist these region-to-region junctions (custom format, see files in ./share/)"
    pos_one: ""
    pos_two: ""
  }
}