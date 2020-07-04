class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/covels_SE.cwl
inputs:
- id: complementary_strand_too
  doc: ': do complementary strand too'
  type: boolean
  inputBinding:
    prefix: -c
- id: set_background_expected
  doc: ': set background expected GC content (0.5 default)'
  type: string
  inputBinding:
    prefix: -g
- id: save_hits_file
  doc: ': save hits in <file>'
  type: File
  inputBinding:
    prefix: -o
- id: set_score_threshold
  doc: ': set score reporting threshold'
  type: string
  inputBinding:
    prefix: -t
- id: set_scanning_size
  doc: ': set scanning window size'
  type: string
  inputBinding:
    prefix: -w
- id: save_name_last
  doc: ': save name of last sequence processed'
  type: File
  inputBinding:
    prefix: -D
- id: set_epsilon_fast
  doc: ': set epsilon for fast search'
  type: boolean
  inputBinding:
    prefix: -E
- id: fast_heuristic_search
  doc: ': fast heuristic search'
  type: boolean
  inputBinding:
    prefix: -F
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: cove_ls
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- covels-SE
