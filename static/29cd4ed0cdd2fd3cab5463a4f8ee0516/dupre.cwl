class: CommandLineTool
id: dupre.cwl
inputs:
- id: observed
  doc: observed occupancy vector (space-separated ints, or a filename)
  type: string[]
  inputBinding:
    prefix: --observed
- id: target
  doc: target size, relative (ends with x) or absolute (integer), e.g. '5x' or '1000000')
  type: string
  inputBinding:
    prefix: --target
- id: truth
  doc: true occupancy vector of the full dataset (space- separated ints, or a filename)
  type: string[]
  inputBinding:
    prefix: --truth
- id: subsample
  doc: subsample size, relative (ends with x) or absolute (integer), e.g. '0.01x'
    or '10000'
  type: string
  inputBinding:
    prefix: --subsample
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: complexity
  doc: output complexity instead of duplication rate
  type: boolean
  inputBinding:
    prefix: --complexity
- id: k0
  doc: occupancy number above which to use the heuristic [25]
  type: long
  inputBinding:
    prefix: --K0
- id: z_width
  doc: allowed standard deviation for each expected occupancy
  type: string
  inputBinding:
    prefix: --zwidth
- id: z_width
  doc: allowed standard deviation of sum of most significant terms
  type: string
  inputBinding:
    prefix: --Zwidth
- id: name
  doc: name of this problem instance
  type: string
  inputBinding:
    prefix: --name
- id: histogram
  doc: instance data is given as PRESEQ histogram file(s)
  type: boolean
  inputBinding:
    prefix: --histogram
- id: strip_names
  doc: strip instance names of observed occupancy vector of last component for lookup
  type: boolean
  inputBinding:
    prefix: --stripnames
outputs: []
cwlVersion: v1.1
baseCommand:
- dupre
