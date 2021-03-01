class: CommandLineTool
id: transcov_generate_length.cwl
inputs:
- id: in_output_file
  doc: RANGE
  type: File?
  inputBinding:
    prefix: --output-file
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
- id: out_output_file
  doc: RANGE
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- transcov
- generate-length
