class: CommandLineTool
id: randomBed.cwl
inputs:
- id: in_length_generate_default
  doc: "The length of the intervals to generate.\n- Default = 100.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_number_generate_default
  doc: "The number of intervals to generate.\n- Default = 1,000,000.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_seed
  doc: "Supply an integer seed for the shuffling.\n- By default, the seed is chosen\
    \ automatically.\n- (INTEGER)"
  type: boolean
  inputBinding:
    prefix: -seed
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_random
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- randomBed
