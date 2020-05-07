class: CommandLineTool
id: randomBed.cwl
inputs:
- id: chr18_gl000207_random
  doc: '4262'
  type: string
  inputBinding:
    position: 0
- id: l
  doc: The length of the intervals to generate. - Default = 100. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: The number of intervals to generate. - Default = 1,000,000. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -n
- id: seed
  doc: Supply an integer seed for the shuffling. - By default, the seed is chosen
    automatically. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -seed
outputs: []
cwlVersion: v1.1
baseCommand:
- randomBed
