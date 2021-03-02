class: CommandLineTool
id: novoutil_sequence.cwl
inputs:
- id: in_seq_id
  doc: is either a numerical seqidx or a unique string from the desired sequence header.
  type: string
  inputBinding:
    position: 2
- id: in_from
  doc: is first base to extracted (1 based counting).
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: is the last base to be extracted.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- sequence
