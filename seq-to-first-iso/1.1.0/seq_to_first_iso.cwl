class: CommandLineTool
id: seq_to_first_iso.cwl
inputs:
- id: input_file_name
  doc: file to parse in .tsv format
  type: string
  inputBinding:
    position: 0
- id: sequence_col_name
  doc: column name with sequences
  type: string
  inputBinding:
    position: 1
- id: charge_col_name
  doc: column name with charges
  type: string
  inputBinding:
    position: 2
- id: output
  doc: name of output file
  type: string
  inputBinding:
    prefix: --output
- id: unlabelled_aa
  doc: amino acids with default abundance
  type: string
  inputBinding:
    prefix: --unlabelled-aa
outputs: []
cwlVersion: v1.1
baseCommand:
- seq-to-first-iso
