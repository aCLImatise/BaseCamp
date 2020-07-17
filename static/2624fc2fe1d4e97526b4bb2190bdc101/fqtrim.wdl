version 1.0

task Fqtrim {
  input {
    Boolean? minimum_length_exact
    Boolean? pid_five
    Boolean? pid_three
    Boolean? mism
    String? match
    Boolean? also_look_terminal
  }
  command <<<
    fqtrim \
      ~{true="-a" false="" minimum_length_exact} \
      ~{true="--pid5" false="" pid_five} \
      ~{true="--pid3" false="" pid_three} \
      ~{true="--mism" false="" mism} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{true="-R" false="" also_look_terminal}
  >>>
  parameter_meta {
    minimum_length_exact: "minimum length of exact suffix-prefix match with adapter sequence that can be trimmed at either end of the read (default: 6)"
    pid_five: "minimum percent identity for adapter match at 5' end (default 96.0)"
    pid_three: "minimum percent identity for adapter match at 3' end (default 94.0)"
    mism: "mismatch penalty for scoring the adapter alignment (default 3)"
    match: "reward for scoring the adapter alignment (default 1)"
    also_look_terminal: "also look for terminal alignments with the reverse complement of the adapter sequence(s)"
  }
}