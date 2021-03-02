class: CommandLineTool
id: extract_long_sequences.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_output
  doc: "The name of the output sequence file. (default:\n<_io.TextIOWrapper name='<stdout>'\
    \ mode='w'\nencoding='utf-8'>)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_length
  doc: "The minimum length of the sequence file. (default:\n200)"
  type: long?
  inputBinding:
    prefix: --length
- id: in_gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
- id: in_input_filenames
  doc: Input FAST[AQ] sequence filename.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The name of the output sequence file. (default:\n<_io.TextIOWrapper name='<stdout>'\
    \ mode='w'\nencoding='utf-8'>)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- extract-long-sequences.py
