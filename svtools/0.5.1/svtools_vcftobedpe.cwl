class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtools_vcftobedpe.cwl
inputs:
- id: input
  doc: 'VCF input (default: stdin)'
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'output BEDPE to write (default: stdout)'
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
- vcftobedpe
