class: CommandLineTool
id: featurealigner2msstats.py.cwl
inputs:
- id: in_align_two_ms_stats_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_input_feature_alignment_dot_tsv
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1
cwlVersion: v1.1
baseCommand:
- featurealigner2msstats.py
