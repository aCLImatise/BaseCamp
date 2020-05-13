version 1.0

task DrivePull {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean ignoreIgnoreChecksum
    Boolean ignoreIgnoreConflict
    Boolean ignoreIgnoreNameClashes
    Boolean matchesMatches
    Boolean noNoClobber
    Boolean noNoPrompt
    Boolean pipedPiped
    Boolean quietQuiet
    Boolean recursiveRecursive
    Int retryRetryCount
    Boolean sameSameExportsDir
    String skipSkipMime
    Boolean starredStarred
    Boolean trashedTrashed
    Boolean verboseVerbose
  }
  command <<<
    drive pull \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-ignore-checksum" false="" ignoreIgnoreChecksum} \
      ~{true="-ignore-conflict" false="" ignoreIgnoreConflict} \
      ~{true="-ignore-name-clashes" false="" ignoreIgnoreNameClashes} \
      ~{true="-matches" false="" matchesMatches} \
      ~{true="-no-clobber" false="" noNoClobber} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-piped" false="" pipedPiped} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive} \
      ~{if defined(retryRetryCount) then ("-retry-count " +  '"' + retryRetryCount + '"') else ""} \
      ~{true="-same-exports-dir" false="" sameSameExportsDir} \
      ~{if defined(skipSkipMime) then ("-skip-mime " +  '"' + skipSkipMime + '"') else ""} \
      ~{true="-starred" false="" starredStarred} \
      ~{true="-trashed" false="" trashedTrashed} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}