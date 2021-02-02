class: CommandLineTool
id: mb_softclip_analyzer_output_dir.cwl
inputs:
- id: in_top_n
  doc: ''
  type: string
  inputBinding:
    prefix: --top_n
- id: in_mb_soft_clip_analyzer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
- output_dir
