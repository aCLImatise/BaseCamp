version 1.0

task DaisySuiteTemplate {
  input {
    Boolean archiveArchive
    Boolean attributesAttributesOnly
    Boolean backupBackup
    Boolean bB
    Boolean copyCopyContents
    Boolean dD
    Boolean forceForce
    Boolean interactiveInteractive
    Boolean hH
    Boolean linkLink
    Boolean dereferenceDereference
    Boolean noNoClobber
    Boolean noNoDereference
    Boolean pP
    Boolean preservePreserve
    String noNoPreserve
    String parentsParents
    Boolean recursiveRecursive
    Boolean refRefLink
    Boolean removeRemoveDestination
    String sparseSparse
    Boolean stripStripTrailingSlashes
    String symbolicSymbolicLink
    String suffixSuffix
    Directory targetTargetDirectory
    String noNoTargetDirectory
    String updateUpdate
    String verboseVerbose
    String oneOneFileSystem
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    DaisySuite_template \
      ~{true="--archive" false="" archiveArchive} \
      ~{true="--attributes-only" false="" attributesAttributesOnly} \
      ~{true="--backup" false="" backupBackup} \
      ~{true="-b" false="" bB} \
      ~{true="--copy-contents" false="" copyCopyContents} \
      ~{true="-d" false="" dD} \
      ~{true="--force" false="" forceForce} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="-H" false="" hH} \
      ~{true="--link" false="" linkLink} \
      ~{true="--dereference" false="" dereferenceDereference} \
      ~{true="--no-clobber" false="" noNoClobber} \
      ~{true="--no-dereference" false="" noNoDereference} \
      ~{true="-p" false="" pP} \
      ~{true="--preserve" false="" preservePreserve} \
      ~{if defined(noNoPreserve) then ("--no-preserve " +  '"' + noNoPreserve + '"') else ""} \
      ~{if defined(parentsParents) then ("--parents " +  '"' + parentsParents + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--reflink" false="" refRefLink} \
      ~{true="--remove-destination" false="" removeRemoveDestination} \
      ~{if defined(sparseSparse) then ("--sparse " +  '"' + sparseSparse + '"') else ""} \
      ~{true="--strip-trailing-slashes" false="" stripStripTrailingSlashes} \
      ~{if defined(symbolicSymbolicLink) then ("--symbolic-link " +  '"' + symbolicSymbolicLink + '"') else ""} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(targetTargetDirectory) then ("--target-directory " +  '"' + targetTargetDirectory + '"') else ""} \
      ~{if defined(noNoTargetDirectory) then ("--no-target-directory " +  '"' + noNoTargetDirectory + '"') else ""} \
      ~{if defined(updateUpdate) then ("--update " +  '"' + updateUpdate + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(oneOneFileSystem) then ("--one-file-system " +  '"' + oneOneFileSystem + '"') else ""} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}