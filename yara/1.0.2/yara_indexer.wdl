version 1.0

task YaraIndexer {
  input {
    Boolean versionVersionCheck
    Boolean verboseVerbose
    String outputOutputPrefix
    String tmpTmpDir
  }
  command <<<
    yara_indexer \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""}
  >>>
}