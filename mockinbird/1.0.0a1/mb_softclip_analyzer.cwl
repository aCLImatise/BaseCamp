class: CommandLineTool
id: mb_softclip_analyzer.cwl
inputs:
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: top_n
  doc: ''
  type: string
  inputBinding:
    prefix: --top_n
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
