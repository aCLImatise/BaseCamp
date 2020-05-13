version 1.0

task BxtoolsConvert {
  input {
    Boolean verboseVerbose
    Boolean keepKeepTags
    Boolean tagTag
  }
  command <<<
    bxtools convert \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--keep-tags" false="" keepKeepTags} \
      ~{true="--tag" false="" tagTag}
  >>>
}