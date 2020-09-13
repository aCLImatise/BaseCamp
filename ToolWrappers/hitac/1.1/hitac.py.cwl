class: CommandLineTool
id: ../../../hitac.py.cwl
inputs:
- id: in_km_er
  doc: 'Kmer size for feature extraction [default: 6]'
  type: long
  inputBinding:
    prefix: --kmer
- id: in_threads
  doc: 'Number of threads [default: all threads available]'
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hitac.py
