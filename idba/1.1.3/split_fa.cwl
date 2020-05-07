class: CommandLineTool
id: split_fa.cwl
inputs:
- id: paired
  doc: if the reads are paired-end in one file
  type: boolean
  inputBinding:
    prefix: --paired
- id: merge
  doc: if the reads are paired-end in two files
  type: boolean
  inputBinding:
    prefix: --merge
- id: filter
  doc: filter out reads containing 'N'
  type: boolean
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- split_fa
