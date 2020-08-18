class: CommandLineTool
id: ../../../scalpel_export.cwl
inputs:
- id: verbose
  doc: ': verbose mode'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: single
  doc: ': export variants for single exome study '
  type: boolean
  inputBinding:
    prefix: --single
- id: de_novo
  doc: ': export variants for family study (mom,dad,affected,sibling)'
  type: boolean
  inputBinding:
    prefix: --denovo
- id: somatic
  doc: ': export variants for normal/tumor study'
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
- scalpel-export
