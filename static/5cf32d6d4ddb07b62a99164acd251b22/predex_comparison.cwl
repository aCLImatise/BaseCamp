class: CommandLineTool
id: predex_comparison.cwl
inputs:
- id: in_design
  doc: Design matrix with sample data
  type: string?
  inputBinding:
    prefix: --design
- id: in_column
  doc: Column name to make comparisons with
  type: string?
  inputBinding:
    prefix: --column
- id: in_output
  doc: Output directory (default = current)
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory (default = current)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- predex
- comparison
