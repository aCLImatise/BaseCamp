class: CommandLineTool
id: add_gff_info_exp_syn_OPTIONS.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- exp_syn
- OPTIONS
