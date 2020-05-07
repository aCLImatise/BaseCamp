class: CommandLineTool
id: starchstrip_typical.cwl
inputs:
- id: include
  doc: Include specified chromosomes from <starch-file>.
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: Exclude specified chromosomes from <starch-file>.
  type: string
  inputBinding:
    prefix: --exclude
outputs: []
cwlVersion: v1.1
baseCommand:
- starchstrip-typical
