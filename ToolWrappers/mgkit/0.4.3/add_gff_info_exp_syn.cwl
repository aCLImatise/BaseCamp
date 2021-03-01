class: CommandLineTool
id: add_gff_info_exp_syn.cwl
inputs:
- id: in_reference
  doc: reference sequence in fasta format  [required]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_split
  doc: "Split the sequence header of the reference at the\nfirst space, to emulate\
    \ BLAST behaviour"
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- exp_syn
