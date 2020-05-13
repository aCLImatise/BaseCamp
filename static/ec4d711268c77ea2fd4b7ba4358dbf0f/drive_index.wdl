version 1.0

task DriveIndex {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean ignoreIgnoreChecksum
    Boolean ignoreIgnoreConflict
    Boolean ignoreIgnoreNameClashes
    Boolean matchesMatches
    Boolean noNoClobber
    Boolean noNoPrompt
    Boolean prunePrune
    Boolean quietQuiet
    Boolean recursiveRecursive
    String skipSkipMime
  }
  command <<<
    drive index \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-ignore-checksum" false="" ignoreIgnoreChecksum} \
      ~{true="-ignore-conflict" false="" ignoreIgnoreConflict} \
      ~{true="-ignore-name-clashes" false="" ignoreIgnoreNameClashes} \
      ~{true="-matches" false="" matchesMatches} \
      ~{true="-no-clobber" false="" noNoClobber} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-prune" false="" prunePrune} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive} \
      ~{if defined(skipSkipMime) then ("-skip-mime " +  '"' + skipSkipMime + '"') else ""}
  >>>
}