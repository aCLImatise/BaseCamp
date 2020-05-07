class: CommandLineTool
id: getOrthologList_reference genome.cwl
inputs:
- id: input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: backbone_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cds_ortholog_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: cds_alignment_basename
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- getOrthologList
- reference genome
