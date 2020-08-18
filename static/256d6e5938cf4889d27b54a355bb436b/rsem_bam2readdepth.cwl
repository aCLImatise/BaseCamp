class: CommandLineTool
id: ../../../rsem_bam2readdepth.cwl
inputs:
- id: sorted_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_depth_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-bam2readdepth
