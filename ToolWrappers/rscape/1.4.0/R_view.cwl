class: CommandLineTool
id: R_view.cwl
inputs:
- id: in__be_verbose
  doc: ': be verbose'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_maxd
  doc: ': max distance for contact definition  [8.0]  (x>0)'
  type: long
  inputBinding:
    prefix: --maxD
- id: in_min_l
  doc: ': min (j-i+1) for contact definition  [1]  (n>0)'
  type: long
  inputBinding:
    prefix: --minL
- id: in_min
  doc: ': Minimum distance btw any two atoms (except water)  [TRUE]'
  type: boolean
  inputBinding:
    prefix: --MIN
- id: in_cb
  doc: ': Distance btw beta Carbors (alphaC for Gly)'
  type: boolean
  inputBinding:
    prefix: --CB
- id: in_inter
  doc: ': TRUE to calculate inter-chain contacts'
  type: boolean
  inputBinding:
    prefix: --inter
- id: in_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File
  inputBinding:
    prefix: -o
- id: in_seed
  doc: ': set RNG seed to <n>. Use 0 for a random seed.  [42]  (n>=0)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_peptides
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_send_output_file)
cwlVersion: v1.1
baseCommand:
- R-view
