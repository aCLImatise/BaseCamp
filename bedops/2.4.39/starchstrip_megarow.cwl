class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/starchstrip_megarow.cwl
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
- id: starch_strip
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- starchstrip-megarow
