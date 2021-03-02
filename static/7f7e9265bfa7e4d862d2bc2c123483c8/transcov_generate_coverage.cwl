class: CommandLineTool
id: transcov_generate_coverage.cwl
inputs:
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transcov
- generate-coverage
