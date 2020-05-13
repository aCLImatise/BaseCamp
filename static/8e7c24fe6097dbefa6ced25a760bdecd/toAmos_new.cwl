class: CommandLineTool
id: toAmos_new.cwl
inputs:
- id: t
  doc: '[SCUFL]'
  type: string
  inputBinding:
    prefix: -t
- id: min
  doc: length
  type: string
  inputBinding:
    prefix: '- min'
- id: max
  doc: length
  type: string
  inputBinding:
    prefix: '- max'
- id: fast_q
  doc: type. The currently supported types are ILLUMINA SANGER. The default is SANGER
  type: string
  inputBinding:
    prefix: '- fastq'
- id: t
  doc: '[SCUFL]'
  type: string
  inputBinding:
    prefix: -t
- id: min
  doc: length
  type: string
  inputBinding:
    prefix: '- min'
- id: max
  doc: length
  type: string
  inputBinding:
    prefix: '- max'
- id: fast_q
  doc: type. The currently supported types are ILLUMINA SANGER. The default is SANGER
  type: string
  inputBinding:
    prefix: '- fastq'
outputs: []
cwlVersion: v1.1
baseCommand:
- toAmos_new
