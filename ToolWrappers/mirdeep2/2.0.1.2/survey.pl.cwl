class: CommandLineTool
id: survey.pl.cwl
inputs:
- id: in_file_outputted_controls
  doc: file outputted by controls
  type: File?
  inputBinding:
    prefix: -a
- id: in_mature_mirna_fasta
  doc: mature miRNA fasta reference file for the species
  type: File?
  inputBinding:
    prefix: -b
- id: in_signature_file
  doc: signature file
  type: File?
  inputBinding:
    prefix: -c
- id: in_read_stack_height
  doc: read stack height necessary for triggering excision
  type: long?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- survey.pl
