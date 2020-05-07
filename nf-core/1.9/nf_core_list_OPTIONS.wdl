version 1.0

task NfCoreListOPTIONS {
  input {
    Boolean sortSort
    Boolean jsonJson
  }
  command <<<
    nf-core list OPTIONS \
      ~{true="--sort" false="" sortSort} \
      ~{true="--json" false="" jsonJson}
  >>>
}