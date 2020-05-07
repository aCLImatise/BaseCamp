version 1.0

task DriveList {
  input {
    Boolean hiddenHidden
    Boolean idId
    Boolean longLong
    String matchMatchMime
    String matchMatchOwner
    Boolean matchesMatches
    Boolean noNoPrompt
    Boolean ownersOwners
    Int pagesizePagesize
    Boolean quietQuiet
    Boolean recursiveRecursive
    Boolean sharedShared
    String skipSkipMime
    String skipSkipOwner
    String sortSort
    Boolean trashedTrashed
    Boolean versionVersion
  }
  command <<<
    drive list \
      ~{true="-hidden" false="" hiddenHidden} \
      ~{true="-id" false="" idId} \
      ~{true="-long" false="" longLong} \
      ~{if defined(matchMatchMime) then ("-match-mime " +  '"' + matchMatchMime + '"') else ""} \
      ~{if defined(matchMatchOwner) then ("-match-owner " +  '"' + matchMatchOwner + '"') else ""} \
      ~{true="-matches" false="" matchesMatches} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-owners" false="" ownersOwners} \
      ~{if defined(pagesizePagesize) then ("-pagesize " +  '"' + pagesizePagesize + '"') else ""} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-recursive" false="" recursiveRecursive} \
      ~{true="-shared" false="" sharedShared} \
      ~{if defined(skipSkipMime) then ("-skip-mime " +  '"' + skipSkipMime + '"') else ""} \
      ~{if defined(skipSkipOwner) then ("-skip-owner " +  '"' + skipSkipOwner + '"') else ""} \
      ~{if defined(sortSort) then ("-sort " +  '"' + sortSort + '"') else ""} \
      ~{true="-trashed" false="" trashedTrashed} \
      ~{true="-version" false="" versionVersion}
  >>>
}