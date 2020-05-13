version 1.0

task FaToTwoBit {
  input {
    Boolean longLong
    Boolean noNoMask
    Boolean stripStripVersion
    Boolean ignoredIgnoredUps
  }
  command <<<
    faToTwoBit \
      ~{true="-long" false="" longLong} \
      ~{true="-noMask" false="" noNoMask} \
      ~{true="-stripVersion" false="" stripStripVersion} \
      ~{true="-ignoreDups" false="" ignoredIgnoredUps}
  >>>
}