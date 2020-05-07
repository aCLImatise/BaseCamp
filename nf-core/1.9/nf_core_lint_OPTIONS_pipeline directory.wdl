version 1.0

task NfCoreLintOPTIONSPipeline directory {
  input {
    Boolean releaseRelease
  }
  command <<<
    nf-core lint OPTIONS pipeline directory \
      ~{true="--release" false="" releaseRelease}
  >>>
}