class: CommandLineTool
id: ../../../mb_softclip_analyzer_output_dir.cwl
inputs:
- id: top_n
  doc: ''
  type: string
  inputBinding:
    prefix: --top_n
- id: mb_soft_clip_analyzer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
- output_dir
