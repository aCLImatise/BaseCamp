version 1.0

task PlanemoShedLint {
  input {
    Boolean? recursive
    Boolean? fail_fast
    Boolean? tools
    Boolean? no_xsd
    Boolean? urls
    String process_dot
  }
  command <<<
    planemo shed_lint \
      ~{process_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (fail_fast) then "--fail_fast" else ""} \
      ~{if (tools) then "--tools" else ""} \
      ~{if (no_xsd) then "--no_xsd" else ""} \
      ~{if (urls) then "--urls" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    recursive: "Recursively perform command for nested\\nrepository directories."
    fail_fast: "If multiple repositories are specified and\\nan error occurs stop immediately instead of\\nprocessing remaining repositories."
    tools: "Lint tools discovered in the process of\\nlinting repositories."
    no_xsd: "Include tool XSD validation in linting"
    urls: "Check validity of URLs in XML files"
    process_dot: "--ensure_metadata               Ensure .shed.yml files contain enough"
  }
  output {
    File out_stdout = stdout()
  }
}