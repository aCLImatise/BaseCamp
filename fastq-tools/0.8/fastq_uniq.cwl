class: CommandLineTool
id: fastq_uniq.cwl
inputs:
- id: verbose
  doc: print status along the way
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-uniq
