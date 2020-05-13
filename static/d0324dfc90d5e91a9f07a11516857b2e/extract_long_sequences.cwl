class: CommandLineTool
id: extract_long_sequences.py.cwl
inputs:
- id: input_filenames
  doc: Input FAST[AQ] sequence filename.
  type: string
  inputBinding:
    position: 0
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: output
  doc: "The name of the output sequence file. (default: <_io.TextIOWrapper name='<stdout>'\
    \ mode='w' encoding='UTF-8'>)"
  type: string
  inputBinding:
    prefix: --output
- id: length
  doc: 'The minimum length of the sequence file. (default: 200)'
  type: long
  inputBinding:
    prefix: --length
- id: gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean
  inputBinding:
    prefix: --bzip
outputs: []
cwlVersion: v1.1
baseCommand:
- extract-long-sequences.py
