class: CommandLineTool
id: pynnotator_or.cwl
inputs:
- id: i
  doc: a VCF file to be annotated
  type: string
  inputBinding:
    prefix: -i
- id: b
  doc: or hg38  The genome build you want to use
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- pynnotator
- or
