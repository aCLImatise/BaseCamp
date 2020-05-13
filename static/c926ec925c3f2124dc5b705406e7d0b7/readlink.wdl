version 1.0

task Readlink {
  input {
    Boolean canonicalizeCanonicalize
    Boolean canonicalizeCanonicalizeExisting
    Boolean canonicalizeCanonicalizeMissing
    Boolean noNoNewLine
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean zeroZero
  }
  command <<<
    readlink \
      ~{true="--canonicalize" false="" canonicalizeCanonicalize} \
      ~{true="--canonicalize-existing" false="" canonicalizeCanonicalizeExisting} \
      ~{true="--canonicalize-missing" false="" canonicalizeCanonicalizeMissing} \
      ~{true="--no-newline" false="" noNoNewLine} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--zero" false="" zeroZero}
  >>>
}