class: CommandLineTool
id: planemo_test_reports.cwl
inputs:
- id: in_test_output
  doc: "Output test report (HTML - for humans) defaults\nto tool_test_output.html."
  type: File?
  inputBinding:
    prefix: --test_output
- id: in_test_output_text
  doc: "Output test report (Basic text - for display in\nCI)"
  type: File?
  inputBinding:
    prefix: --test_output_text
- id: in_test_output_markdown
  doc: "Output test report (Markdown style - for humans\n& computers)"
  type: File?
  inputBinding:
    prefix: --test_output_markdown
- id: in_test_output_x_unit
  doc: Output test report (xunit style - for CI
  type: File?
  inputBinding:
    prefix: --test_output_xunit
- id: in_file_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- test_reports
