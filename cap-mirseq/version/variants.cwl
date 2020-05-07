class: CommandLineTool
id: variants.sh_run_info.cwl
inputs:
- id: input_bam_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: run_info
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- variants.sh
- run_info
