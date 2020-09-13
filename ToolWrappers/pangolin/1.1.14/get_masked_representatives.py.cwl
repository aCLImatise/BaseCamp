class: CommandLineTool
id: ../../../get_masked_representatives.py.cwl
inputs:
- id: in_representatives
  doc: ''
  type: string
  inputBinding:
    prefix: --representatives
- id: in_to_mask
  doc: ''
  type: string
  inputBinding:
    prefix: --to-mask
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_representative_seqs_out
  doc: ''
  type: string
  inputBinding:
    prefix: --representative-seqs-out
- id: in_metadata
  doc: ''
  type: string
  inputBinding:
    prefix: --metadata
- id: in_metadata_out
  doc: ''
  type: string
  inputBinding:
    prefix: --metadata-out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_masked_representatives.py
