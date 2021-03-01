version 1.0

task PlanemoLint {
  input {
    File? report_x_unit
    String? skip
    Boolean? no_xsd
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
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if (no_xsd) then "--no_xsd" else ""} \
      ~{if (doi) then "--doi" else ""} \
      ~{if (cond_a_requirements) then "--conda_requirements" else ""} \
      ~{if (bio_containers) then "--biocontainers" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    report_x_unit: "Output an XUnit report, useful for CI"
    skip: "Comma-separated list of lint tests to skip\\n(e.g. passing --skip 'citations,xml_order'\\nwould skip linting of citations and best-\\npractice XML ordering."
    no_xsd: "Include tool XSD validation in linting"
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