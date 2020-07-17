version 1.0

task KtUpdateTaxonomy.sh {
  input {
    Boolean? only_fetch
    Boolean? only_build
    Boolean? preserve
  }
  command <<<
    ktUpdateTaxonomy.sh \
      ~{true="--only-fetch" false="" only_fetch} \
      ~{true="--only-build" false="" only_build} \
      ~{true="--preserve" false="" preserve}
  >>>
  parameter_meta {
    only_fetch: "Only download source files; do not build."
    only_build: "Assume source files exist; do not fetch."
    preserve: "Do not remove source files after build."
  }
}