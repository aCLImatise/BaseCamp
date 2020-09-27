class: CommandLineTool
id: assembly.py_trim_fasta.cwl
inputs:
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_in_fasta
  doc: Input fasta file
  type: string
  inputBinding:
    position: 0
- id: in_out_fast_a
  doc: Output (trimmed) fasta file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assembly.py
- trim_fasta
