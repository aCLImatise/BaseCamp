version 1.0

task ArvGet {
  input {
    String retriesRetries
    Boolean progressProgress
    Boolean noNoProgress
    Boolean batchBatchProgress
    String hashHash
    Boolean md5sumMd5sum
    Boolean nN
    Boolean rR
    Boolean fF
    Boolean vV
    Boolean skipSkipExisting
    Boolean stripStripManifest
    String? locatorLocator
    String? destinationDestination
  }
  command <<<
    arv-get \
      ~{locatorLocator} \
      ~{if defined(retriesRetries) then ("--retries " +  '"' + retriesRetries + '"') else ""} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--no-progress" false="" noNoProgress} \
      ~{true="--batch-progress" false="" batchBatchProgress} \
      ~{if defined(hashHash) then ("--hash " +  '"' + hashHash + '"') else ""} \
      ~{true="--md5sum" false="" md5sumMd5sum} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="--skip-existing" false="" skipSkipExisting} \
      ~{true="--strip-manifest" false="" stripStripManifest} \
      ~{destinationDestination}
  >>>
}