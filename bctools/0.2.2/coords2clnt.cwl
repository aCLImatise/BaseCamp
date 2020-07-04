class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/coords2clnt.py.cwl
inputs:
- id: outfile
  doc: Write results to this file.
  type: string
  inputBinding:
    prefix: --outfile
- id: three_prime
  doc: Set position one nt downstream of 3'-end as crosslinked nucleotide.
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: verbose
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: Print lots of debugging information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_file
  doc: Path to bed input file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- coords2clnt.py
