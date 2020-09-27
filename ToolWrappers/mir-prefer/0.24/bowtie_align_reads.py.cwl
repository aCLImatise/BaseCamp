class: CommandLineTool
id: bowtie_align_reads.py.cwl
inputs:
- id: in_fast_an
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bowtie-align-reads.py
