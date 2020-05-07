version 1.0

task DrivePush {
  input {
    Boolean hiddenHidden
    Boolean ignoreIgnoreChecksum
    Boolean ignoreIgnoreConflict
    Boolean ignoreIgnoreNameClashes
    Boolean mM
    Boolean noNoClobber
    Boolean noNoPrompt
    Boolean ocrOcr
    Boolean pipedPiped
    Boolean quietQuiet
    Boolean recursiveRecursive
    Int retryRetryCount
    String skipSkipMime
    Boolean verboseVerbose
  }
  command <<<
    drive push \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-ignore-checksum" false="" ignoreIgnoreChecksum} \
      ~{true="-ignore-conflict" false="" ignoreIgnoreConflict} \
      ~{true="-ignore-name-clashes" false="" ignoreIgnoreNameClashes} \
      ~{true="-m" false="" mM} \
      ~{true="-no-clobber" false="" noNoClobber} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-ocr" false="" ocrOcr} \
      ~{true="-piped" false="" pipedPiped} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive} \
      ~{if defined(retryRetryCount) then ("-retry-count " +  '"' + retryRetryCount + '"') else ""} \
      ~{if defined(skipSkipMime) then ("-skip-mime " +  '"' + skipSkipMime + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}