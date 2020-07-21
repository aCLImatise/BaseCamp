class: CommandLineTool
id: ../../../scalpel_discovery.cwl
inputs:
- id: verbose
  doc: ': verbose mode'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: single
  doc: ': single exome study '
  type: boolean
  inputBinding:
    prefix: --single
- id: de_novo
  doc: ': family study (mom,dad,affected,sibling)'
  type: boolean
  inputBinding:
    prefix: --denovo
- id: somatic
  doc: ': normal/tumor study'
  type: boolean
  inputBinding:
    prefix: --somatic
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scalpel-discovery
