class: CommandLineTool
id: ../../../bedtools_random.cwl
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
- id: in_chr_one
  doc: '249250621'
  type: long
  inputBinding:
    position: 0
- id: in_chr_two
  doc: '243199373'
  type: long
  inputBinding:
    position: 1
- id: in_chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  doc: '4262'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- random
