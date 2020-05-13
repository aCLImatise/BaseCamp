class: CommandLineTool
id: getOrthologList_input xmfa_CDS ortholog filename.cwl
inputs:
- id: backbone_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cds_ortholog_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cds_alignment_basename
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- getOrthologList
- input xmfa
- CDS ortholog filename
