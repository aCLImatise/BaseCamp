class: CommandLineTool
id: planemo_workflow_lint.cwl
inputs:
- id: in_report_x_unit
  doc: Output an XUnit report, useful for CI
  type: File?
  inputBinding:
    prefix: --report_xunit
- id: in_skip
  doc: "Comma-separated list of lint tests to skip\n(e.g. passing --skip 'citations,xml_order'\n\
    would skip linting of citations and best-\npractice XML ordering."
  type: string?
  inputBinding:
    prefix: --skip
- id: in_testing
  doc: --fail_level [warn|error]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- workflow_lint
