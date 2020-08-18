class: CommandLineTool
id: ../../../toAmos.cwl
inputs:
- id: acc
  doc: '- use accession numbers in FRG files'
  type: boolean
  inputBinding:
    prefix: -acc
- id: arachne
  doc: '- scaffold file in Arachne .links format'
  type: string
  inputBinding:
    prefix: -arachne
- id: sc_aff
  doc: '- scaffold file in Bambus .scaff format'
  type: string
  inputBinding:
    prefix: -scaff
- id: read_insert_information
  doc: '- read insert information'
  type: string
  inputBinding:
    prefix: -i
- id: map
  doc: '- read map information'
  type: string
  inputBinding:
    prefix: -map
- id: pos
  doc: '- TIGR-style .pos position file'
  type: string
  inputBinding:
    prefix: -pos
- id: id
  doc: '- start numbering AMOS internal IDs at this number'
  type: long
  inputBinding:
    prefix: -id
outputs: []
cwlVersion: v1.1
baseCommand:
- toAmos
