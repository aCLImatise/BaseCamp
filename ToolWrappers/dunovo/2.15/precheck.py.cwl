class: CommandLineTool
id: precheck.py.cwl
inputs:
- id: in_reads_one_dot_fq
  doc: The first mates in the read pairs.
  type: long
  inputBinding:
    position: 0
- id: in_reads_two_dot_fq
  doc: The second mates in the read pairs.
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- precheck.py
