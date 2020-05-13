class: CommandLineTool
id: sga_bwt2fa.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: outfile
  doc: write the sequences to FILE
  type: File
  inputBinding:
    prefix: --outfile
- id: prefix
  doc: prefix the names of the reads with STR
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- bwt2fa
