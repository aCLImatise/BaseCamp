version 1.0

task InteropDumpbin {
  input {
    Boolean subsetSubset
    Boolean latestLatestVersion
  }
  command <<<
    interop_dumpbin \
      ~{true="--subset" false="" subsetSubset} \
      ~{true="--latest_version" false="" latestLatestVersion}
  >>>
}