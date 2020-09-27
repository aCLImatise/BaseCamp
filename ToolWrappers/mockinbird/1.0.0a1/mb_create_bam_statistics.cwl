class: CommandLineTool
id: mb_create_bam_statistics.cwl
inputs:
- id: in_gff_file
  doc: ''
  type: File
  inputBinding:
    prefix: --gff_file
- id: in_estimate_bam_statistics
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_json
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
- mb-create-bam-statistics
