class: CommandLineTool
id: ../../../pydemult.cwl
inputs:
- id: fast_q
  doc: ''
  type: string
  inputBinding:
    prefix: --fastq
- id: sample_sheet
  doc: ''
  type: string
  inputBinding:
    prefix: --samplesheet
outputs: []
cwlVersion: v1.1
baseCommand:
- pydemult
