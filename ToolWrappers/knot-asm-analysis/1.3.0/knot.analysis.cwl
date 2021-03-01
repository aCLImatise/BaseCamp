class: CommandLineTool
id: knot.analysis.cwl
inputs:
- id: in_input_prefix
  doc: prefix of knot output
  type: string?
  inputBinding:
    prefix: --input_prefix
- id: in_output
  doc: path where report was write
  type: File?
  inputBinding:
    prefix: --output
- id: in_classification
  doc: Add path classification in report
  type: boolean?
  inputBinding:
    prefix: --classification
- id: in_hamilton_path
  doc: Add hamilton path in report
  type: boolean?
  inputBinding:
    prefix: --hamilton-path
- id: in_knot_dot_analysis_dot_generate_report
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- knot.analysis
