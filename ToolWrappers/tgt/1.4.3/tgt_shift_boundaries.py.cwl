class: CommandLineTool
id: ../../../tgt_shift_boundaries.py.cwl
inputs:
- id: in_encoding
  doc: file encoding (default "utf-8")
  type: File
  inputBinding:
    prefix: --encoding
- id: in_format
  doc: the output format (default "short")
  type: string
  inputBinding:
    prefix: --format
- id: in_outfile
  doc: "the output file (defaults to\ninputfile.shifted.Extension)\n"
  type: File
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tgt-shift-boundaries.py
