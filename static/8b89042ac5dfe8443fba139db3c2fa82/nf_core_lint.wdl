version 1.0

task NfcoreLint {
  input {
    Boolean? release
    Boolean? show_passed
    Boolean? fail_ignored
    File? markdown
    File? json
    String workflows_dot
  }
  command <<<
    nf_core lint \
      ~{workflows_dot} \
      ~{if (release) then "--release" else ""} \
      ~{if (show_passed) then "--show-passed" else ""} \
      ~{if (fail_ignored) then "--fail-ignored" else ""} \
      ~{if defined(markdown) then ("--markdown " +  '"' + markdown + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    release: "Execute additional checks for release-ready"
    show_passed: "Show passing tests on the command line"
    fail_ignored: "Convert ignored tests to failures"
    markdown: "File to write linting results to (Markdown)"
    json: "File to write linting results to (JSON)"
    workflows_dot: "-f, --fix <test>       Attempt to automatically fix specified lint test"
  }
  output {
    File out_stdout = stdout()
  }
}