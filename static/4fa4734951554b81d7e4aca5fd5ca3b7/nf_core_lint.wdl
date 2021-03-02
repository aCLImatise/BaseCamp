version 1.0

task NfcoreLint {
  input {
    Boolean? release
    File? markdown
    File? json
    String workflows_dot
  }
  command <<<
    nf_core lint \
      ~{workflows_dot} \
      ~{if (release) then "--release" else ""} \
      ~{if defined(markdown) then ("--markdown " +  '"' + markdown + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0"
  }
  parameter_meta {
    release: "Execute additional checks for release-ready"
    markdown: "File to write linting results to (Markdown)"
    json: "File to write linting results to (JSON)"
    workflows_dot: "-p, --show-passed      Show passing tests on the command line."
  }
  output {
    File out_stdout = stdout()
  }
}