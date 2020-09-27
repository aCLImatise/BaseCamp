class: CommandLineTool
id: getOrthologList.cwl
inputs:
- id: in_input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_backbone_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_reference_genome
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cds_ortholog_filename
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_cds_alignment_base_name
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getOrthologList
