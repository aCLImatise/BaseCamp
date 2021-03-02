class: CommandLineTool
id: TOBIAS_MergePDF.cwl
inputs:
- id: in_input
  doc: '[ [ ...]]  PDF files to join'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'Path to output file (default: ./merged.pdf)'
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Path to output file (default: ./merged.pdf)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- MergePDF
