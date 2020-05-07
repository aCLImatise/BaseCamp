version 1.0

task DriveTrash {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean matchesMatches
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    drive trash \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-matches" false="" matchesMatches} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}