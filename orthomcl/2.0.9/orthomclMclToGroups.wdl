version 1.0

task OrthomclMclToGroups {
  input {
    String? prefixPrefix
    String? startingStartingIdNum
  }
  command <<<
    orthomclMclToGroups \
      ~{prefixPrefix} \
      ~{startingStartingIdNum}
  >>>
}