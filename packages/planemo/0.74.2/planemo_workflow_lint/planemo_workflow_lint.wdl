version 1.0

task PlanemoWorkflowLint {
  input {
    File? report_x_unit
    String? skip
    String testing
  }
  command <<<
    planemo workflow_lint \
      ~{testing} \
      ~{if defined(report_x_unit) then ("--report_xunit " +  '"' + report_x_unit + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    report_x_unit: "Output an XUnit report, useful for CI"
    skip: "Comma-separated list of lint tests to skip\\n(e.g. passing --skip 'citations,xml_order'\\nwould skip linting of citations and best-\\npractice XML ordering."
    testing: "--fail_level [warn|error]"
  }
  output {
    File out_stdout = stdout()
  }
}