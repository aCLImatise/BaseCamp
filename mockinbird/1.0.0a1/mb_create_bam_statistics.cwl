class: CommandLineTool
id: mb_create_bam_statistics.cwl
inputs:
- id: estimate_bam_statistics
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_json
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    prefix: --gff_file
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-create-bam-statistics
