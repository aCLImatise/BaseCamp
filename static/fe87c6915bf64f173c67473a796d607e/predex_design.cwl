class: CommandLineTool
id: predex_design.cwl
inputs:
- id: in_input
  doc: Input files (count matrix, e.g., HTSeq)
  type: string?
  inputBinding:
    prefix: --input
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
- design
