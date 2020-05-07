class: CommandLineTool
id: quickjunc.cwl
inputs:
- id: i
  doc: 'BAM file name (default: None)'
  type: string
  inputBinding:
    prefix: -i
- id: a
  doc: 'Anchor size (default: 8)'
  type: string
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- quickjunc
