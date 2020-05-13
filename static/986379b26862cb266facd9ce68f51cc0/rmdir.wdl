version 1.0

task Rmdir {
  input {
    Boolean ignoreIgnoreFailOnNonEmpty
    Boolean parentsParents
    Boolean verboseVerbose
  }
  command <<<
    rmdir \
      ~{true="--ignore-fail-on-non-empty" false="" ignoreIgnoreFailOnNonEmpty} \
      ~{true="--parents" false="" parentsParents} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}