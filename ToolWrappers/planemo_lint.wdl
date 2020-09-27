version 1.0

task PlanemoLint {
  input {
    Boolean? report_level
    File? report_x_unit
    String? skip
    Boolean? xsd
    Boolean? doi
    Boolean? cond_a_requirements
    Boolean? bio_containers
    String testing
    String process_dot
    String subdirectories_dot
  }
  command <<<
    planemo lint \
      ~{testing} \
      ~{process_dot} \
      ~{subdirectories_dot} \
      ~{if (report_level) then "--report_level" else ""} \
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if (xsd) then "--xsd" else ""} \
      ~{if (doi) then "--doi" else ""} \
      ~{if (cond_a_requirements) then "--conda_requirements" else ""} \
      ~{if (bio_containers) then "--biocontainers" else ""}
  >>>
  parameter_meta {
    report_level: "[all|warn|error]"
    report_x_unit: "Output an XUnit report, useful for CI"
    skip: "Comma-separated list of lint tests to skip\\n(e.g. passing --skip 'citations,xml_order'\\nwould skip linting of citations and best-\\npractice XML ordering."
    xsd: "/ --no_xsd                Include tool XSD validation in linting"
    doi: "Check validity of DOIs in XML files"
    cond_a_requirements: "Check tool requirements for availability in\\nbest practice Conda channels."
    bio_containers: "Check best practice BioContainer namespaces\\nfor a container definition applicable for\\nthis tool."
    testing: "--fail_level [warn|error]"
    process_dot: "-r, --recursive                 Recursively perform command for"
    subdirectories_dot: "--urls                          Check validity of URLs in XML files"
  }
  output {
    File out_stdout = stdout()
  }
}