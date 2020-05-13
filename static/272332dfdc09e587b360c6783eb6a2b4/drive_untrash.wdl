version 1.0

task DriveUntrash {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean matchesMatches
    Boolean quietQuiet
  }
  command <<<
    drive untrash \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-matches" false="" matchesMatches} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}