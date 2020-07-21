class: CommandLineTool
id: ../../../add_gff_info_exp_syn.cwl
inputs:
- id: reference
  doc: reference sequence in fasta format  [required]
  type: File
  inputBinding:
    prefix: --reference
- id: split
  doc: Split the sequence header of the reference at the first space, to emulate BLAST
    behaviour
  type: boolean
  inputBinding:
    prefix: --split
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- exp_syn
