class: CommandLineTool
id: svtools_bedpetovcf.cwl
inputs:
- id: in_input
  doc: 'BEDPE input (default: stdin)'
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'Output VCF to write (default: stdout)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File?
  inputBinding:
    prefix: --tempdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtools
- bedpetovcf
