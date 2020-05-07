version 1.0

task KtUpdateTaxonomy.sh {
  input {
    Boolean onlyOnlyFetch
    Boolean onlyOnlyBuild
    Boolean preservePreserve
  }
  command <<<
    ktUpdateTaxonomy.sh \
      ~{true="--only-fetch" false="" onlyOnlyFetch} \
      ~{true="--only-build" false="" onlyOnlyBuild} \
      ~{true="--preserve" false="" preservePreserve}
  >>>
}