version 1.0

task NfCoreLicencesOPTIONSPipeline name {
  input {
    Boolean jsonJson
  }
  command <<<
    nf-core licences OPTIONS pipeline name \
      ~{true="--json" false="" jsonJson}
  >>>
}