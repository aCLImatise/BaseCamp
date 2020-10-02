class: CommandLineTool
id: sequana_gtf_fixer.cwl
inputs:
- id: in_input_gtf_file
  doc: input GTF file
  type: File
  inputBinding:
    prefix: --input
- id: in_output_gtf_file
  doc: output GTF file
  type: File
  inputBinding:
    prefix: --output
- id: in_gtf_fixer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_5
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gtf_file
  doc: output GTF file
  type: File
  outputBinding:
    glob: $(inputs.in_output_gtf_file)
cwlVersion: v1.1
baseCommand:
- sequana_gtf_fixer
