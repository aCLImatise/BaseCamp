class: CommandLineTool
id: seq_to_first_iso.cwl
inputs:
- id: in_output
  doc: name of output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_unlabelled_aa
  doc: amino acids with default abundance
  type: string?
  inputBinding:
    prefix: --unlabelled-aa
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_file_name
  doc: file to parse in .tsv format
  type: string
  inputBinding:
    position: 0
- id: in_sequence_col_name
  doc: column name with sequences
  type: string
  inputBinding:
    position: 1
- id: in_charge_col_name
  doc: column name with charges
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: name of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- seq-to-first-iso
