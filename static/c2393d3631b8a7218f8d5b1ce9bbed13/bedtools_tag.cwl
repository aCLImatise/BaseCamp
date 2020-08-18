class: CommandLineTool
id: ../../../bedtools_tag.cwl
inputs:
- id: intervals
  doc: Use the full interval (including name, score, and strand) to populate tags.
    Requires the -labels option to identify from which file the interval came.
  type: boolean
  inputBinding:
    prefix: -intervals
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: files
  doc: ''
  type: File[]
  inputBinding:
    prefix: -files
- id: labels
  doc: ''
  type: string[]
  inputBinding:
    prefix: -labels
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- tag
