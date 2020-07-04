version 1.0

task PlanemoLint {
  input {
    Boolean? report_level
    File? report_x_unit
    Boolean? fail_level
    String? skip
    Boolean? xsd
    Boolean? recursive
    Boolean? urls
    Boolean? doi
    Boolean? cond_a_requirements
    Boolean? bio_containers
    String tool_path
  }
  command <<<
    planemo lint \
      ~{tool_path} \
      ~{true="--report_level" false="" report_level} \
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""} \
      ~{true="--fail_level" false="" fail_level} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{true="--xsd" false="" xsd} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--urls" false="" urls} \
      ~{true="--doi" false="" doi} \
      ~{true="--conda_requirements" false="" cond_a_requirements} \
      ~{true="--biocontainers" false="" bio_containers}
  >>>
  parameter_meta {
    report_level: "[all|warn|error]"
    report_x_unit: "Output an XUnit report, useful for CI testing"
    fail_level: "[warn|error]"
    skip: "Comma-separated list of lint tests to skip (e.g. passing --skip 'citations,xml_order' would skip linting of citations and best- practice XML ordering."
    xsd: "/ --no_xsd                Include tool XSD validation in linting process."
    recursive: "Recursively perform command for subdirectories."
    urls: "Check validity of URLs in XML files"
    doi: "Check validity of DOIs in XML files"
    cond_a_requirements: "Check tool requirements for availability in best practice Conda channels."
    bio_containers: "Check best practice BioContainer namespaces for a container definition applicable for this tool."
    tool_path: ""
  }
}