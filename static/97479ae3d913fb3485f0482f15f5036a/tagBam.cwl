class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tagBam.cwl
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
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tag
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tagBam
