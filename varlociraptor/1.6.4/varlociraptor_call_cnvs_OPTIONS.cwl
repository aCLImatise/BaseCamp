class: CommandLineTool
id: varlociraptor_call_cnvs_OPTIONS.cwl
inputs:
- id: purity
  doc: ''
  type: string
  inputBinding:
    prefix: --purity
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- call
- cnvs
- OPTIONS
