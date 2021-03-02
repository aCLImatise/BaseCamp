version 1.0

task KtUpdateTaxonomysh {
  input {
    Boolean? only_fetch
    Boolean? only_build
    Boolean? preserve
  }
  command <<<
    ktUpdateTaxonomy_sh \
      ~{if (only_fetch) then "--only-fetch" else ""} \
      ~{if (only_build) then "--only-build" else ""} \
      ~{if (preserve) then "--preserve" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  parameter_meta {
    only_fetch: "Only download source files; do not build."
    only_build: "Assume source files exist; do not fetch."
    preserve: "Do not remove source files after build."
  }
  output {
    File out_stdout = stdout()
  }
}