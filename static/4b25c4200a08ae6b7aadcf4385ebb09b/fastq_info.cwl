class: CommandLineTool
id: fastq_info.cwl
inputs:
- id: s
  doc: ': the reads in the two fastq files have the same ordering'
  type: boolean
  inputBinding:
    prefix: -s
- id: e
  doc: ': do not fail with empty files'
  type: boolean
  inputBinding:
    prefix: -e
- id: q
  doc: ': do not fail if quality encoding cannot be determined'
  type: boolean
  inputBinding:
    prefix: -q
- id: r
  doc: ': skip check for duplicated readnames'
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_info
