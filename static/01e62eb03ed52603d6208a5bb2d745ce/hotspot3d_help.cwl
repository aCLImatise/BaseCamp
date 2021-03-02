class: CommandLineTool
id: hotspot3d_help.cwl
inputs:
- id: in_preprocessing
  doc: drugport  --  0) Parse drugport database (OPTIONAL)
  type: string
  inputBinding:
    position: 0
- id: in_up_pro
  doc: --  1) Update proximity files
  type: string
  inputBinding:
    position: 1
- id: in_prep
  doc: --  2) Run steps 2a-2f of preprocessing
  type: string
  inputBinding:
    position: 2
- id: in_cal_roi
  doc: --  2a) Generate region of interest (ROI) information
  type: string
  inputBinding:
    position: 3
- id: in_statis
  doc: --  2b) Calculate p_values for pairs of mutations
  type: string
  inputBinding:
    position: 4
- id: in_an_no
  doc: --  2c) Add region of interest (ROI) annotation
  type: string
  inputBinding:
    position: 5
- id: in_trans
  doc: '--  2d) Add transcript annotation '
  type: string
  inputBinding:
    position: 6
- id: in_cosmic
  doc: --  2e) Add COSMIC annotation to proximity file
  type: string
  inputBinding:
    position: 7
- id: in_prior
  doc: --  2f) Prioritization
  type: string
  inputBinding:
    position: 8
- id: in_analysis
  doc: main      --  0) Run steps a-f of analysis (BETA)
  type: string
  inputBinding:
    position: 9
- id: in_search
  doc: --  a) 3D mutation proximity searching
  type: string
  inputBinding:
    position: 10
- id: in_cluster
  doc: --  b) Determine mutation-mutation and mutation-drug clusters
  type: string
  inputBinding:
    position: 11
- id: in_sig_clus
  doc: --  c) Determine significance of clusters (BETA)
  type: string
  inputBinding:
    position: 12
- id: in_summary
  doc: --  d) Summarize clusters
  type: string
  inputBinding:
    position: 13
- id: in_visual
  doc: --  e) Visulization of 3D proximity
  type: string
  inputBinding:
    position: 14
- id: in_help
  doc: --  this message
  type: string
  inputBinding:
    position: 15
- id: in_support
  doc: For user support please email adamscott@wustl.edu
  type: string
  inputBinding:
    position: 16
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hotspot3d
- help
