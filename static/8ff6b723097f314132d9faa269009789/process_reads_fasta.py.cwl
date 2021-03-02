class: CommandLineTool
id: process_reads_fasta.py.cwl
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
hints: []
cwlVersion: v1.1
baseCommand:
- process-reads-fasta.py
