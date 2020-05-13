class: CommandLineTool
id: getOrthologList_input xmfa_backbone seq file_reference genome_CDS alignment base
  name.cwl
inputs:
- id: cds_ortholog_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cds_alignment_basename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- getOrthologList
- input xmfa
- backbone seq file
- reference genome
- CDS alignment base name
