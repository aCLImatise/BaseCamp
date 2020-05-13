class: CommandLineTool
id: dr_disco_detect.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: min_e_score
  doc: Minimal score to initiate pulling sub-graphs (larger numbers boost performance
    but result in suboptimal results) [default=8]
  type: long
  inputBinding:
    prefix: --min-e-score
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- detect
