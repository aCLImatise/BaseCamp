class: CommandLineTool
id: planemo_test_reports.cwl
inputs:
- id: test_output
  doc: Output test report (HTML - for humans) defaults to tool_test_output.html.
  type: File
  inputBinding:
    prefix: --test_output
- id: test_output_text
  doc: Output test report (Basic text - for display in CI)
  type: File
  inputBinding:
    prefix: --test_output_text
- id: test_output_markdown
  doc: Output test report (Markdown style - for humans & computers)
  type: File
  inputBinding:
    prefix: --test_output_markdown
- id: test_output_x_unit
  doc: Output test report (xunit style - for CI systems
  type: File
  inputBinding:
    prefix: --test_output_xunit
- id: test_output_junit
  doc: Output test report (jUnit style - for CI systems
  type: File
  inputBinding:
    prefix: --test_output_junit
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- test_reports
