version 1.0

task Mv {
  input {
    Boolean backupBackup
    Boolean bB
    Boolean forceForce
    Boolean interactiveInteractive
    Boolean noNoClobber
    Boolean stripStripTrailingSlashes
    String suffixSuffix
    Directory targetTargetDirectory
    Boolean noNoTargetDirectory
    Boolean updateUpdate
    Boolean verboseVerbose
    Boolean contextContext
  }
  command <<<
    mv \
      ~{true="--backup" false="" backupBackup} \
      ~{true="-b" false="" bB} \
      ~{true="--force" false="" forceForce} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="--no-clobber" false="" noNoClobber} \
      ~{true="--strip-trailing-slashes" false="" stripStripTrailingSlashes} \
      ~{if defined(suffixSuffix) then ("--suffix " +  '"' + suffixSuffix + '"') else ""} \
      ~{if defined(targetTargetDirectory) then ("--target-directory " +  '"' + targetTargetDirectory + '"') else ""} \
      ~{true="--no-target-directory" false="" noNoTargetDirectory} \
      ~{true="--update" false="" updateUpdate} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--context" false="" contextContext}
  >>>
}