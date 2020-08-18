class: CommandLineTool
id: ../../../svtools_bedpetovcf.cwl
inputs:
- id: input
  doc: 'BEDPE input (default: stdin)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'Output VCF to write (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
- id: tempdir
  doc: Directory for temp file downloads
  type: string
  inputBinding:
    prefix: --tempdir
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- bedpetovcf
