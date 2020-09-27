version 1.0

task PlanemoShedLint {
  input {
    Boolean? recursive
    Boolean? fail_fast
    Boolean? report_level
    Boolean? fail_level
    Boolean? tools
    Boolean? xsd
    Boolean? urls
    String process_dot
  }
  command <<<
    planemo shed_lint \
      ~{process_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (fail_fast) then "--fail_fast" else ""} \
      ~{if (report_level) then "--report_level" else ""} \
      ~{if (fail_level) then "--fail_level" else ""} \
      ~{if (tools) then "--tools" else ""} \
      ~{if (xsd) then "--xsd" else ""} \
      ~{if (urls) then "--urls" else ""}
  >>>
  parameter_meta {
    recursive: "Recursively perform command for nested\\nrepository directories."
    fail_fast: "If multiple repositories are specified and\\nan error occurs stop immediately instead of\\nprocessing remaining repositories."
    report_level: "[all|warn|error]"
    fail_level: "[warn|error]"
    tools: "Lint tools discovered in the process of\\nlinting repositories."
    xsd: "/ --no_xsd                Include tool XSD validation in linting"
    urls: "Check validity of URLs in XML files"
    process_dot: "--ensure_metadata               Ensure .shed.yml files contain enough"
  }
  output {
    File out_stdout = stdout()
  }
}