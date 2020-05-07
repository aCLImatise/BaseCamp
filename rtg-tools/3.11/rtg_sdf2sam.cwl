class: CommandLineTool
id: rtg_sdf2sam.cwl
inputs:
- id: input
  doc: SDF containing sequences
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: output filename (extension added if not present). Use '-' to write to standard
    output
  type: File
  inputBinding:
    prefix: --output
- id: no_gzip
  doc: do not gzip the output
  type: boolean
  inputBinding:
    prefix: --no-gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- sdf2sam
