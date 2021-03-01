class: CommandLineTool
id: split_sequences.py.cwl
inputs:
- id: in_threshold
  doc: Split based on this threshold of length
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_input
  doc: INPUT sequence file (default=None)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "OUTPUT prefix, will write fragmentary file to\nOUTPUT.frag.fas and full-length\
    \ file to\nOUTPUT.full.fas (default=output)\n"
  type: long?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- split_sequences.py
