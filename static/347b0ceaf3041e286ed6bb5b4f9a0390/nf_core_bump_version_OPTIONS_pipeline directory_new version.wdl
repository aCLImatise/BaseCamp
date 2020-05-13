version 1.0

task NfCoreBumpVersionOPTIONSPipeline directoryNew version {
  input {
    Boolean nextNextFlow
  }
  command <<<
    nf-core bump-version OPTIONS pipeline directory new version \
      ~{true="--nextflow" false="" nextNextFlow}
  >>>
}