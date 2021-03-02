version 1.0

task PlanemoTestReports {
  input {
    File? test_output
    File? test_output_text
    File? test_output_markdown
    File? test_output_x_unit
    String file_path
  }
  command <<<
    planemo test_reports \
      ~{file_path} \
      ~{if defined(test_output) then ("--test_output " +  '"' + test_output + '"') else ""} \
      ~{if defined(test_output_text) then ("--test_output_text " +  '"' + test_output_text + '"') else ""} \
      ~{if defined(test_output_markdown) then ("--test_output_markdown " +  '"' + test_output_markdown + '"') else ""} \
      ~{if defined(test_output_x_unit) then ("--test_output_xunit " +  '"' + test_output_x_unit + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.2--py_0"
  }
  parameter_meta {
    test_output: "Output test report (HTML - for humans)\\ndefaults to tool_test_output.html."
    test_output_text: "Output test report (Basic text - for display\\nin CI)"
    test_output_markdown: "Output test report (Markdown style - for\\nhumans & computers)"
    test_output_x_unit: "Output test report (xunit style - for CI"
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}