class: CommandLineTool
id: assess_homopolymers_analyse.cwl
inputs:
- id: pkl
  doc: Input .pkl file(s).
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: 'Output directory (will be created). (default: homopolymers)'
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- assess_homopolymers
- analyse
