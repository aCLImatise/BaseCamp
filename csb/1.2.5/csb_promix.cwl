class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/csb_promix.cwl
inputs:
- id: components
  doc: Number of components (default=-1)
  type: string
  inputBinding:
    prefix: --components
- id: type
  doc: Type of mixture (default=segments)
  type: string
  inputBinding:
    prefix: --type
- id: in_file
  doc: input PDB file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-promix
