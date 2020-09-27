class: CommandLineTool
id: svtools_vcftobedpe.cwl
inputs:
- id: in_input
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'output BEDPE to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File
  inputBinding:
    prefix: --tempdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtools
- vcftobedpe
