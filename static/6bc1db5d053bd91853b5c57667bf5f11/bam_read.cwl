class: CommandLineTool
id: bam_read.cwl
inputs:
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_csv
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam-read
