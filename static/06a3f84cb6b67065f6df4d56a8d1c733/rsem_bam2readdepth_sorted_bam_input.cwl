class: CommandLineTool
id: rsem_bam2readdepth_sorted_bam_input.cwl
inputs:
- id: read_depth_output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-bam2readdepth
- sorted_bam_input
