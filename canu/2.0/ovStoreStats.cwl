class: CommandLineTool
id: ovStoreStats.cwl
inputs:
- id: c
  doc: Expect coverage at mean (below 1/3 this is 'low coverage', above 5/3 is 'repeat')
  type: string
  inputBinding:
    prefix: -C
- id: c
  doc: Write stats to stdout, not to a file
  type: boolean
  inputBinding:
    prefix: -c
- id: v
  doc: Report processing speed to stderr
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ovStoreStats
