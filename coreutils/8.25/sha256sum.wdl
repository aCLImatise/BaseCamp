version 1.0

task Sha256sum {
  input {
    Boolean binaryBinary
    Boolean checkCheck
    Boolean tagTag
    Boolean textText
    Boolean ignoreIgnoreMissing
    Boolean quietQuiet
    Boolean statusStatus
    Boolean strictStrict
    Boolean warnWarn
  }
  command <<<
    sha256sum \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--tag" false="" tagTag} \
      ~{true="--text" false="" textText} \
      ~{true="--ignore-missing" false="" ignoreIgnoreMissing} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--status" false="" statusStatus} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--warn" false="" warnWarn}
  >>>
}