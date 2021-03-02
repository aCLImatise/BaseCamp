class: CommandLineTool
id: mb_softclip_analyzer_bam_file.cwl
inputs:
- id: in_top_n
  doc: ''
  type: string?
  inputBinding:
    prefix: --top_n
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-softclip-analyzer
- bam_file
