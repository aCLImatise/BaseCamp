class: CommandLineTool
id: ../../../mb_softclip_analyzer_bam_file.cwl
inputs:
- id: top_n
  doc: ''
  type: string
  inputBinding:
    prefix: --top_n
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
- bam_file
