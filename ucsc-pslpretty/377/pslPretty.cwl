class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslPretty.cwl
inputs:
- id: axt
  doc: Save in format like Scott Schwartz's axt format. Note gaps in both sequences
    are still allowed in the output, which not all axt readers will expect.
  type: boolean
  inputBinding:
    prefix: -axt
- id: dot
  doc: Output a dot every N records.
  type: string
  inputBinding:
    prefix: -dot
- id: long
  doc: Don't abbreviate long inserts.
  type: boolean
  inputBinding:
    prefix: -long
- id: check
  doc: Output alignment checks to filename.
  type: File
  inputBinding:
    prefix: -check
- id: in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pretty_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pslPretty
